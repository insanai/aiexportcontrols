# Impact of Export Controls on the Future of Open Source AI

An illustrated literary and primary-source book on how sovereign export controls across **both software/model weights and physical silicon hardware** reshape open-source artificial intelligence, scientific cooperation, and human progress.

[Read the Website & Landing Page](https://insanai.github.io/aiexportcontrols/) | [Read the English Book](https://insanai.github.io/aiexportcontrols/en/index.html) | [Download English A4 PDF](https://insanai.github.io/aiexportcontrols/books/en/open-source-ai-export-controls-en.pdf) | [26 Primary Sources](https://insanai.github.io/aiexportcontrols/en/sources.html)

Published in **seven native editions** matching [GuideDog](https://github.com/insanai/guidedog)'s languages: **English (`en`), Simplified Chinese (`zh-cn`), Japanese (`ja`), Korean (`ko`), Hindi (`hi`), Spanish (`es`), and German (`de`)**. Every edition includes the literary landing page, all 11 book chapters, nine scientific and narrative illustrations, precise native diagrams, an interactive 40-checkpoint explorer, a complete China & US official approval and contact directory, and a typeset A4 PDF book.

## What This Book Covers

1. **From an Open Commons to Guarded Walls:** Explains how open-weight AI (`DeepSeek-R1`, `Qwen3`) depends on both shared knowledge and physical computers.
2. **Mind and Silicon (Software + Hardware Together):** Explains why open-source AI never floats in thin air: export controls now clamp onto **both** frontier model weights (`266504X`, `4E091`) **and** the physical silicon stack underneath (`3A090` AI chips, `742.6(b)(10)` H200 review, `266506X` processor blueprints and memory designs with alternative listed characteristics, `266507X` `>10,000-card` supercluster interconnects, and `Footnote 4` solar machinery).
3. **The Fortress Trap:** Uses explicitly assumed scores to explain a possible Prisoner's Dilemma, then tests the assumptions, repeated cooperation and the limits of independent-audit probability examples. It makes no empirical claim of a 70% innovation loss or a fourfold safety risk.
4. **Public Releases and Private Transfers:** Separates current Chinese registration, proposed catalogue routes and US jurisdiction. Explains public-information exclusions, derivatives and proposed facilitation without inventing a universal release procedure.
5. **Official Government Departments, Statutory Clocks & Contact Directory:** Verified filing portals (`ecomp.mofcom.gov.cn` and `snapr.bis.gov`), statutory working-day timelines (China's 30-working-day Stage 1 Letter of Intent + 15-working-day Stage 2 Technology Export License), room numbers, street addresses, emails, faxes, and helpdesk telephone numbers in Beijing, Provincial Commerce/S&T departments, Washington, D.C., and California.

## Pure GuideDog Architecture (Zero Python Build Scripts)

This project is authored **100% natively in [GuideDog v1.0.0-beta.10](https://github.com/insanai/guidedog/releases/tag/v1.0.0-beta.10)** without Python wrapper scripts:

- **Markup:** Native reStructuredText (`.rst`) in [`site/`](site/) (landing page) and [`book/`](book/) (11 chapters).
- **Illustrations, Diagrams & Math:**
  - Nine original generated scientific and narrative illustrations in [`book/assets/illustrations/`](book/assets/illustrations/), inspired by engineering cutaways and historical cell-biology plates. PNG masters and JPEG delivery files retain the same dimensions. Prompts are kept outside version control.
  - Exact game scores, timelines and filing questions remain native diagrams or selectable text, separate from the narrative artwork.
  - Native `.. typst-diagram::` compiled by GuideDog's embedded Typst `0.15.1` engine with `@preview/cetz:0.3.4` and `@preview/fletcher:0.5.8` ([`book/figures/diagrams.typ`](book/figures/diagrams.typ)).
  - Native `.. graphviz::` (`:class: graphviz-adaptive`) compiled by GuideDog's linked Graphviz `16.1.0` engine.
  - Native `.. math::` and `:math:` rendered via local offline SVG MathJax in HTML and native Typst math in PDF.
- **Internationalization:** Native Gettext catalogs (`locales/<lang>/LC_MESSAGES/*.po`) managed with `guidedog build -b gettext` and `guidedog intl`, plus Jinja `{{ _('...') }}` templates.
- **Atomic Multi-Mount Build:** Root [`conf.toml`](conf.toml) assembles all 7 landing pages, 7 HTML book editions, 7 typeset A4 PDF books, and primary-source archives in one command:

```sh
# Build the complete multilingual website + 7 PDF books into public/
guidedog ssg build . --out public

# Check every internal link across the assembled site
linkcheck public -v

# Check translation completeness across all 6 translated languages
guidedog intl stat -l zh_CN -l ja -l ko -l hi -l es -l de site
guidedog intl stat -l zh_CN -l ja -l ko -l hi -l es -l de book
```

*(Note: CJK and Devanagari PDF editions use `fonts-noto-cjk` and `fonts-noto-core` on Debian/Ubuntu, configured in `pdf_font_paths`.)*

## Untouched Official Documents & Primary Sources

`research/sources.json` records all **26 primary sources**, retrieval dates (`2026-11-02`), HTTP statuses, and SHA-256 hashes (with GAO Decision `B-337935` and the Jefferson letter transparently marked as web-verified when automated byte archiving failed):

- [Announcement No. 48 Official Page](https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html) | [PDF Reading Copy](sources/announcement-48-official-page.pdf)
- [Attachment 1 (Original WPS)](sources/announcement-48-attachment-1.wps) | [Converted PDF](sources/announcement-48-attachment-1.pdf)
- [Attachment 2 (Original WPS)](sources/announcement-48-attachment-2.wps) | [Converted PDF](sources/announcement-48-attachment-2.pdf)
- [MOFCOM & MOST Order No. 2 of 2009: Licensing Measures PDF](sources/cnmeas.pdf)
- [2026 US Semiconductor Rule (`91 FR 1684`) Official PDF](sources/us26-official.pdf)
- [2025 US AI Diffusion Rule (`90 FR 4544`) Official PDF](sources/us25-official.pdf)
- [US BIS Official SNAP-R Filing Guide & FAQ PDF](sources/snapr.pdf)

*(An unrelated organoid presentation previously stored locally as `china_export_control.pdf` remains excluded from version control and was never used as evidence.)*

## Credits & Acknowledgments

Built with the help of [GuideDog](https://github.com/insanai/guidedog), with assistance from **Jennifer Yuan**, **Vicky Ni**, **Ronak Rathore**, and **Kanak Rathore**.

## Author and license

Written by **Vikrant Rathore**, with assistance from **Jennifer Yuan, Vicky Ni, Ronak Rathore and Kanak Rathore**.

Original work is licensed under **CC BY-SA 4.0**. Third-party materials retain their own copyrights and licenses. See [LICENSE](LICENSE) and [NOTICE](NOTICE).
