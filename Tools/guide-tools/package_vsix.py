"""Build a local VS Code extension package using only Python's standard library."""

from pathlib import Path
import json
import zipfile
from xml.sax.saxutils import escape


ROOT = Path(__file__).resolve().parent


def build():
    package = json.loads((ROOT / "package.json").read_text(encoding="utf-8"))
    name = package["name"]
    version = package["version"]
    output = ROOT / f"{name}-{version}.vsix"
    manifest = f'''<?xml version="1.0" encoding="utf-8"?>
<PackageManifest Version="2.0.0" xmlns="http://schemas.microsoft.com/developer/vsx-schema/2011">
  <Metadata>
    <Identity Language="en-US" Id="{escape(name)}" Version="{escape(version)}" Publisher="{escape(package['publisher'])}" />
    <DisplayName>{escape(package['displayName'])}</DisplayName>
    <Description xml:space="preserve">{escape(package['description'])}</Description>
    <Tags>restedxp,rxp,lua</Tags>
    <Categories>Programming Languages,Formatters,Linters</Categories>
    <Properties>
      <Property Id="Microsoft.VisualStudio.Code.Engine" Value="{escape(package['engines']['vscode'])}" />
      <Property Id="Microsoft.VisualStudio.Code.ExtensionDependencies" Value="" />
      <Property Id="Microsoft.VisualStudio.Code.ExtensionPack" Value="" />
      <Property Id="Microsoft.VisualStudio.Code.ExtensionKind" Value="workspace" />
      <Property Id="Microsoft.VisualStudio.Code.LocalizedLanguages" Value="" />
      <Property Id="Microsoft.VisualStudio.Code.PreRelease" Value="false" />
    </Properties>
  </Metadata>
  <Installation><InstallationTarget Id="Microsoft.VisualStudio.Code" /></Installation>
  <Dependencies />
  <Assets>
    <Asset Type="Microsoft.VisualStudio.Code.Manifest" Path="extension/package.json" Addressable="true" />
    <Asset Type="Microsoft.VisualStudio.Services.Content.Details" Path="extension/README.md" Addressable="true" />
    <Asset Type="Microsoft.VisualStudio.Services.Content.License" Path="extension/LICENSE" Addressable="true" />
  </Assets>
</PackageManifest>
'''
    content_types = '''<?xml version="1.0" encoding="utf-8"?>
<Types xmlns="http://schemas.openxmlformats.org/package/2006/content-types">
  <Default Extension="json" ContentType="application/json" />
  <Default Extension="js" ContentType="application/javascript" />
  <Default Extension="md" ContentType="text/markdown" />
  <Default Extension="vsixmanifest" ContentType="text/xml" />
  <Override PartName="/extension/LICENSE" ContentType="text/plain" />
</Types>
'''
    files = ["package.json", "core.js", "commands.json", "extension.js", "editor.js", "tags.js", "cli.js",
             "language-configuration.json", "README.md"]
    files += [p.relative_to(ROOT).as_posix() for p in sorted((ROOT / "syntaxes").glob("*.json"))]
    with zipfile.ZipFile(output, "w", compression=zipfile.ZIP_DEFLATED) as archive:
        archive.writestr("extension.vsixmanifest", manifest)
        archive.writestr("[Content_Types].xml", content_types)
        for file in files:
            archive.write(ROOT / file, f"extension/{file}")
        archive.write(ROOT.parents[1] / "LICENSE", "extension/LICENSE")
    print(output)
    return output


if __name__ == "__main__":
    build()
