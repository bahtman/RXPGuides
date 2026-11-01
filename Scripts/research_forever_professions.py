"""Read public client-derived recipe facts for the custom city profession routes.

Run explicitly to refresh; never writes guides or changes addon behavior.
Trainer learn levels absent from the client remain null, not guessed.
"""
import concurrent.futures
import html
import json
import re
import urllib.request
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
BASE = 'https://wowforevertalents.com'
PROFESSIONS = ['alchemy', 'blacksmithing', 'enchanting', 'engineering',
               'leatherworking', 'tailoring', 'mining', 'first-aid', 'fishing']
# These requested crafts have recipe-item records, so are not found by the
# trainer-only filter. A deprecated recipe item does not prove availability.
EXTRA_RECIPES = {'alchemy': {2334}, 'enchanting': {25124}}


def fetch(url):
    request = urllib.request.Request(url, headers={'User-Agent': 'Mozilla/5.0'})
    return urllib.request.urlopen(request, timeout=30).read().decode()


def plain(value):
    return html.unescape(re.sub('<[^>]+>', '', value)).strip()


def read_profession(slug):
    url = BASE + '/professions/' + slug + '/'
    index = fetch(url)
    pages = {url}
    pages.update(BASE + html.unescape(x).split('#')[0] for x in
                 re.findall(r'class="pw-group-page" href="([^"]+)"', index))
    rows = {}
    for page in sorted(pages):
        content = index if page == url else fetch(page)
        for block in re.split(r'<li class="pw-row"', content)[1:]:
            attrs = dict(re.findall(r'(data-[\w-]+)="([^"]*)"', block.split('>', 1)[0]))
            requested = int(attrs['data-r']) in EXTRA_RECIPES.get(slug, set())
            if ((attrs.get('data-src') != 'trainer' and not requested) or attrs.get('data-status') == 'removed'
                    or int(attrs.get('data-yellow', '999')) > 200):
                continue
            if 'class="rd"' not in block:
                continue
            name = re.search(r'class="pw-row-name">(.*?)</span>', block, re.S)
            reagents = []
            section = re.search(r'<div class="rd-reagents">(.*?)</div>', block, re.S)
            if section:
                for reagent in section[1].split('<li ')[1:]:
                    reagents.append({
                        'id': int(re.search(r'item=(\d+)', reagent)[1]),
                        'count': int(re.search(r'class="rd-count">(\d+)', reagent)[1]),
                        'name': plain(re.search(r'class="rd-reagent-name">(.*?)</span>', reagent)[1]),
                    })
            product = re.search(r'class="pw-row-btn" href="[^"]*item=(\d+)', block)
            rows[int(attrs['data-r'])] = {
                'spell': int(attrs['data-r']), 'name': plain(name[1]).rstrip('\u2605\u25c6'),
                'source_kind': attrs.get('data-src'),
                'learn': int(attrs['data-learn']) if attrs.get('data-learn') else None,
                'yellow': int(attrs['data-yellow']), 'grey': int(attrs['data-grey']),
                'product': int(product[1]) if product else None,
                'yield': re.search(r'Makes ([\d\u2013-]+)', block)[1] if 'Makes ' in block else None,
                'reagents': reagents, 'source': page,
            }
    return slug, sorted(rows.values(), key=lambda x: (x['yellow'], x['spell']))


if __name__ == '__main__':
    with concurrent.futures.ThreadPoolExecutor(max_workers=4) as pool:
        data = dict(pool.map(read_profession, PROFESSIONS))
    output = ROOT / 'docs/route-authoring/forever-profession-recipe-facts.json'
    output.write_text(json.dumps({'checked': '2026-10-29', 'client_build': '1.60.1.70532',
                                 'professions': data}, indent=2), encoding='utf-8')
    for slug, rows in data.items():
        print(slug, len(rows))
