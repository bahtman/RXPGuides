local _, addon = ...
local module = addon:NewModule("NetWorth")

local function Settings()
    RXPCData.netWorth = RXPCData.netWorth or {}
    return RXPCData.netWorth
end

local frame = CreateFrame("Frame", "RXPNetWorthFrame", UIParent)
module.frame = frame
frame:SetSize(540, 26)
frame:SetPoint("CENTER", UIParent, "CENTER", 250, -388)
frame:SetMovable(true)
frame:EnableMouse(true)
frame:RegisterForDrag("LeftButton")
frame:SetClampedToScreen(true)

local netWorthText = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
netWorthText:SetPoint("LEFT", frame, "LEFT", 0, 0)
netWorthText:SetTextColor(1, 1, 1)

local cheapestLabel = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
cheapestLabel:SetText("Cheapest Item:")
cheapestLabel:SetTextColor(1, 1, 1)

local icon = frame:CreateTexture(nil, "ARTWORK")
icon:SetSize(16, 16)

local cheapestText = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
cheapestText:SetTextColor(1, 1, 1)

local currentBag, currentSlot
local updatePending = false
local UpdateDisplay

local function CoinString(copper)
    local formatter = C_CurrencyInfo and C_CurrencyInfo.GetCoinTextureString or GetCoinTextureString
    return formatter and formatter(copper) or tostring(copper)
end

local function ContainerSlots(bag)
    local api = C_Container and C_Container.GetContainerNumSlots or GetContainerNumSlots
    return api and api(bag) or 0
end

local function ContainerItemID(bag, slot)
    local api = C_Container and C_Container.GetContainerItemID or GetContainerItemID
    return api and api(bag, slot)
end

local function StackCount(bag, slot)
    if C_Container and C_Container.GetContainerItemInfo then
        local info = C_Container.GetContainerItemInfo(bag, slot)
        return info and info.stackCount
    end
    local _, count = GetContainerItemInfo(bag, slot)
    return count
end

local function BagTypeAndFreeSlots(bag)
    local api = C_Container and C_Container.GetContainerNumFreeSlots or GetContainerNumFreeSlots
    if not api then return 0, nil end
    return api(bag)
end

-- RXP's keybind compares (maximum stack size + current count) * vendor price / 2.
-- Keep the bag order, filtering and strict comparison aligned with FindJunk() in
-- RXPGuides/InventoryManager.lua, so ties select the same first bag slot.
local function NextDeletion(inventoryManager)
    local bestBag, bestSlot, bestID, bestCount, bestPrice
    local bestScore = math.huge
    local quiverFreeSlots, projectileType = 0, nil
    local firstBag = BACKPACK_CONTAINER or 0
    local lastBag = NUM_BAG_FRAMES or 4

    for bag = firstBag, lastBag do
        local freeSlots, bagType = BagTypeAndFreeSlots(bag)
        local ammoFlags = bit.band(bagType or 0, 3) + 1
        if ammoFlags > 1 then
            quiverFreeSlots = freeSlots or 0
            projectileType = ammoFlags
        end
    end

    local shardCount = 0
    for bag = firstBag, lastBag do
        local _, bagType = BagTypeAndFreeSlots(bag)
        local slots = (not bagType or bagType > 2) and 0 or ContainerSlots(bag)
        for slot = 1, slots do
            local id = ContainerItemID(bag, slot)
            if id then
                local itemInfo = C_Item and C_Item.GetItemInfo or GetItemInfo
                local _, _, _, _, _, _, _, stackMax, _, _, price, class, subclass = itemInfo(id)
                local isProjectile = bagType == 0 and class == Enum.ItemClass.Projectile and subclass == projectileType
                if isProjectile and quiverFreeSlots > 0 then
                    -- RXP moves the ammunition before deleting anything.
                    return nil, nil, nil, nil, nil, true
                end
                if not isProjectile then
                    local count = StackCount(bag, slot)
                    local junk
                    if id == 6265 then
                        -- IsJunk() counts surplus Soul Shards as it scans. Avoid
                        -- changing RXP's internal counter just by drawing a preview.
                        local maxShards = tonumber(addon.settings and addon.settings.profile and addon.settings.profile.maxSoulShards) or 100
                        local getItemCount = C_Item and C_Item.GetItemCount or GetItemCount
                        if getItemCount(6265) > maxShards then
                            shardCount = shardCount + 1
                            junk = shardCount > maxShards
                        end
                    else
                        junk = inventoryManager.IsJunk(id, bag, slot)
                    end
                    if stackMax and count and junk then
                        price = price or 0
                        local score = (stackMax + count) * price / 2
                        if score < bestScore then
                            bestBag, bestSlot, bestID = bag, slot, id
                            bestCount, bestPrice, bestScore = count, price, score
                        end
                    end
                end
            end
        end
    end
    return bestBag, bestSlot, bestID, bestCount, bestPrice
end

local function Refresh()
    if not frame:IsShown() then return end
    local inventoryManager = addon.inventoryManager
    if not inventoryManager or not inventoryManager.GetNetWorth then
        netWorthText:SetText("RXP Net Worth: unavailable")
        cheapestText:SetText("")
        icon:Hide()
        return
    end

    local ok, worth = pcall(inventoryManager.GetNetWorth)
    netWorthText:SetText(ok and type(worth) == "number" and ("Net Worth: " .. CoinString(worth)) or "Net Worth: unavailable")

    cheapestLabel:ClearAllPoints()
    cheapestLabel:SetPoint("LEFT", netWorthText, "RIGHT", 14, 0)
    icon:ClearAllPoints()
    icon:SetPoint("LEFT", cheapestLabel, "RIGHT", 4, 0)
    cheapestText:ClearAllPoints()
    cheapestText:SetPoint("LEFT", icon, "RIGHT", 3, 0)

    if not inventoryManager.bagUpdated or not RXPCData or not RXPCData.discardPile then
        currentBag, currentSlot = nil, nil
        icon:Hide()
        cheapestText:SetText("Loading...")
        return
    end

    local previewOK, bag, slot, id, count, price, movesAmmo = pcall(NextDeletion, inventoryManager)
    if not previewOK then
        currentBag, currentSlot = nil, nil
        icon:Hide()
        cheapestText:SetText("Unavailable")
        return
    end
    currentBag, currentSlot = bag, slot
    cheapestText:SetTextColor(1, 1, 1)
    if movesAmmo then
        icon:Hide()
        cheapestText:SetText("Moves ammo first")
    elseif not id then
        icon:Hide()
        cheapestText:SetText("None")
    else
        local itemInfo = C_Item and C_Item.GetItemInfo or GetItemInfo
        local name, _, quality, _, _, _, _, _, _, texture = itemInfo(id)
        icon:SetTexture(texture)
        icon:Show()
        if quality and ITEM_QUALITY_COLORS and ITEM_QUALITY_COLORS[quality] then
            local color = ITEM_QUALITY_COLORS[quality]
            cheapestText:SetTextColor(color.r, color.g, color.b)
        else
            cheapestText:SetTextColor(1, 1, 1)
        end
        cheapestText:SetText((name or ("Item " .. id)) .. (count > 1 and (" x" .. count) or "") .. "  " .. CoinString(count * price))
    end

    local width = netWorthText:GetStringWidth() + cheapestLabel:GetStringWidth() + cheapestText:GetStringWidth() + (id and 39 or 20)
    frame:SetWidth(math.max(250, width))
end

UpdateDisplay = function()
    if updatePending then return end
    updatePending = true
    C_Timer.After(0.1, function()
        updatePending = false
        Refresh()
    end)
end

frame:SetScript("OnDragStart", function(self)
    self:StartMoving()
end)
frame:SetScript("OnDragStop", function(self)
    self:StopMovingOrSizing()
    local point, _, relativePoint, x, y = self:GetPoint(1)
    local settings = Settings()
    settings.point = point
    settings.relativePoint = relativePoint
    settings.x = x
    settings.y = y
end)
frame:SetScript("OnEnter", function(self)
    if currentBag and currentSlot then
        GameTooltip:SetOwner(self, "ANCHOR_TOP")
        GameTooltip:SetBagItem(currentBag, currentSlot)
        GameTooltip:Show()
    end
end)
frame:SetScript("OnLeave", function()
    GameTooltip:Hide()
end)

frame:RegisterEvent("PLAYER_LOGIN")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:RegisterEvent("PLAYER_MONEY")
frame:RegisterEvent("BAG_UPDATE_DELAYED")
frame:RegisterEvent("GET_ITEM_INFO_RECEIVED")
frame:RegisterEvent("ITEM_DATA_LOAD_RESULT")
frame:SetScript("OnEvent", function(self, event)
    if event == "PLAYER_LOGIN" then
        local settings = Settings()
        if settings.point then
            self:ClearAllPoints()
            self:SetPoint(settings.point, UIParent, settings.relativePoint or settings.point, settings.x or 0, settings.y or 0)
        end
        if settings.hidden then self:Hide() end
        if addon.RegisterMessage then
            addon:RegisterMessage("RXP_JUNK", UpdateDisplay)
        end
    end
    UpdateDisplay()
end)

SLASH_RXPNETWORTH1 = "/networth"
SLASH_RXPNETWORTH2 = "/rxpnetworth"
SlashCmdList.RXPNETWORTH = function()
    local settings = Settings()
    settings.hidden = frame:IsShown()
    frame:SetShown(not settings.hidden)
    if not settings.hidden then UpdateDisplay() end
end

frame:Show()
