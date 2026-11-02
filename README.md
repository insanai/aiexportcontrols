# The new technology borders

A visual research book about China's Announcement 48 of 2026, US export controls and the future of open AI models from China.

[Read the book](https://insanai.github.io/chinaexportcontrol/) | [English PDF](https://insanai.github.io/chinaexportcontrol/en/technology-borders.pdf) | [Sources and method](https://insanai.github.io/chinaexportcontrol/en/sources.html)

The seven editions match GuideDog's languages: English, Simplified Chinese, Japanese, Korean, Hindi, Spanish and German. Every edition has ten chapters, a complete 40-point atlas and a PDF. The website includes chapter search, sector and status filters, examples, language switching and light or dark reading. Typst draws the figures and typesets the books.

## Findings and research date

We checked the sources on 2 November 2026. China's temporary registration requirement has started. The catalogue changes remain a consultation proposal. The draft excludes already public AI technology and proposes facilitation for new open-source exports of restricted technology. It does not establish a blanket ban on Chinese open models.

We distinguish the published US model-weight rule from BIS's announced non-enforcement policy and GAO's May 2026 decision. We also explain the January 2026 chip licensing change. Examples and possible futures are marked as analysis.

The translations preserve the findings, chapters, source links and complete atlas, with wording adapted for each language. They are editorial reading aids without independent legal or native-language professional review. Original legal texts prevail.

## Official documents

MOFCOM published the two attachments as WPS documents. We downloaded the original bytes and converted reading copies with LibreOffice. We also printed the official article as a separate PDF with a provenance note. The US Federal Register PDFs are unchanged official downloads.

- [Announcement 48, original official page](https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html)
- [Announcement, PDF reading copy](public/sources/announcement-48-official-page.pdf)
- [Attachment 1, original WPS](public/sources/announcement-48-attachment-1.wps) and [PDF reading copy](public/sources/announcement-48-attachment-1.pdf)
- [Attachment 2, original WPS](public/sources/announcement-48-attachment-2.wps) and [PDF reading copy](public/sources/announcement-48-attachment-2.pdf)
- [2026 US chip rule, official PDF](public/sources/us26-official.pdf)
- [2025 US AI Diffusion Rule, official PDF](public/sources/us25-official.pdf)

The file originally supplied as `china_export_control.pdf` contains an unrelated organoid research presentation. We preserved it locally, excluded it from version control and did not use it as evidence.

## Build

We use [GuideDog](https://github.com/insanai/guidedog), installed as `guidedog`, with embedded Typst. This edition was built with GuideDog 1.0.0-beta.8 and Typst 0.15.1. Python 3.11 or later and Noto CJK and Devanagari fonts are needed. The PDF theme also uses the installed Lato family. Font paths in `tools/build.py` follow Debian's locations.

```sh
python3 tools/build.py
python3 tools/verify.py
```

We edit prose in `content/<language>.book`, translated atlas entries in `content/<language>.atlas`, and the source atlas in `content/atlas.json`. `tools/ui.py` holds interface translations. The build assembles ordinary GuideDog Markdown projects in `book/<language>`, uses shared HTML and Typst templates, and puts the complete Pages package in `public`. Intermediate files remain in `_build`.

Every GuideDog HTML and PDF build uses `-W`, so warnings stop publication. The atlas checks preserve original codes, point numbers and proposed status across all languages. Local links and assets, source hashes and searchable PDF contents are checked before deployment.

For a local preview and browser checks:

```sh
python3 -m http.server 8778 --bind 127.0.0.1 --directory public
# In another shell, with Playwright and Chromium installed:
PLAYWRIGHT_MODULE=/path/to/playwright node tools/browser_check.cjs
```

We can override `BOOK_BASE_URL`, `CHROMIUM_PATH` and `PLAYWRIGHT_MODULE`. Browser verification exercises every chapter on desktop, selected chapters on mobile, all filters, search, language switching, theme persistence, six scenarios and the atlas without JavaScript.

To re-create the attachment conversions, LibreOffice must be installed:

```sh
soffice --headless --convert-to pdf --outdir public/sources research/snapshots/announcement-48-attachment-1.wps research/snapshots/announcement-48-attachment-2.wps
PLAYWRIGHT_MODULE=/path/to/playwright node tools/render_sources.cjs
```

`tools/fetch_sources.py` refreshes source snapshots when explicitly run. A source refresh needs a new editorial review; it does not automatically update the legal analysis or research date.

## Publish

GitHub Actions verifies the committed `public` package, then deploys it to GitHub Pages. The workflow runs on changes to the publication or checks. The site has no server, analytics or external runtime service. Search and filters use local edition data. Theme choice stays in the reader's browser.

## Source record

`research/sources.json` lists 18 primary sources, source locations, access dates, downloaded-byte hashes and download limitations. The GAO page was verified with web research; its direct archive request returned HTTP 403, so we do not claim a local byte snapshot of it. The Chinese attachment originals have byte-identical public copies.

`research/package-verification.json` and `research/browser-verification.json` record prepublication checks. Fonts retain their licenses in the static font directory. Legal documents and publisher materials retain their original rights; their presence does not imply endorsement of this book.
