#import "theme.typ": gd-palette, gd-serif, gd-sans, gd-mono, gd-script-fonts, configure-document
// Guidedog's PDF book template. It is ordinary Typst: edit it freely, or delete it to
// use Guidedog's built-in copy. The build calls it as
//
//   #show: book.with(title: ..., author: ..., version: ..., ...)
//
// followed by the chapters, so every parameter below is available. Typst packages may
// be imported here, for example #import "@preview/cetz:0.4.2".
// The Templates chapter of the Guidedog manual lists what the build passes in.
//
// A centered cover, teal chapter openings and a shared, language-aware reading theme.
// Chapters keep their navigation, anchors and right-hand openings.
#let book(
  title: "",
  author: "",
  version: "",
  date: "",
  lang: "en",
  paper: "a4",
  logo: none,
  copyright: "",
  accent: gd-palette.accent,
  numbering: false, // The build numbers headings itself; this says whether it did.
  version-label: "Version", // "Version" in the document language.
  // Fonts, first available wins. Typst always has Libertinus Serif, New Computer
  // Modern, and DejaVu Sans Mono; the sans-serif list ends with a serif so headings
  // still work when only those are present (pdf_fonts = "embedded").
  serif: gd-serif,
  sans: gd-sans,
  mono: gd-mono,
  size: 10.6pt,
  // Follow cross-references to other pages with their page, as "Deployment (p. 42)":
  // set to n => [p. #n], in the document language.
  page-ref: none,
  body,
) = {
  let lang-key = lower(lang.replace("_", "-").split("-").first())
  title = (
    en: "Impact of Export Controls on the Future of Open Source AI",
    zh: "出口管制对开源人工智能未来的影响",
    ja: "輸出管理がオープンソースAIの未来に与える影響",
    ko: "수출 통제가 오픈소스 AI의 미래에 미치는 영향",
    hi: "ओपन-सोर्स एआई के भविष्य पर निर्यात नियंत्रणों का प्रभाव",
    es: "El impacto de los controles de exportación en el futuro de la IA de código abierto",
    de: "Auswirkungen von Exportkontrollen auf die Zukunft von Open-Source-KI",
  ).at(lang-key, default: title)
  show: configure-document.with(lang: lang, serif: serif, sans: sans, mono: mono,
    size: size, accent: accent)
  sans = sans + gd-script-fonts(lang)
  let sans-text = text.with(font: sans)
  let ink = gd-palette.ink
  let quiet = gd-palette.quiet
  let rule = gd-palette.rule
  set document(title: title, author: if author == "" { () } else { author })
  set list(indent: 0.6em, body-indent: 0.6em, marker: ([\u{2022}], [\u{2013}], [\u{b7}]))
  set enum(indent: 0.4em, body-indent: 0.6em)
  set terms(spacing: 1.05em)
  show math.equation: set text(number-type: "lining")
  show math.equation.where(block: true): set block(spacing: 1.1em)

  // ---- Headings -------------------------------------------------------------------
  show heading: set text(fill: ink, hyphenate: false, number-type: "lining")
  show heading: set text(font: sans)
  show heading: set par(justify: false, first-line-indent: 0em)
  set heading(numbering: none)
  // A break to the next right-hand page; the markers let the page furniture know a
  // page between them was left blank.
  let recto() = {
    [#metadata(none) <gd-part-end>]
    pagebreak(weak: true, to: "odd")
    [#metadata(none) <gd-part-start>]
  }
  let marker(it) = if it.numbering != none {
    std.numbering(it.numbering, ..counter(heading).at(it.location()))
  }
  // A chapter opens on a right-hand page with its number set large above the title.
  // Headings that are not in the outline (the root document's sections, a contents
  // directive's title) are set as sections instead.
  show heading.where(level: 1): it => {
    if not it.outlined {
      block(above: 1.8em, below: 0.9em, sticky: true,
        text(size: 1.35em, weight: "bold", it.body))
      return
    }
    recto()
    let number = marker(it)
    block(width: 100%, above: 0pt, below: 2.4em, sticky: true, {
      v(22mm)
      if number != none {
        text(size: 18pt, weight: "bold", fill: accent, number)
        v(4mm)
      } else {
        line(length: 18mm, stroke: 2.2pt + accent)
        v(7mm)
      }
      set par(leading: 0.3em)
      text(size: 30pt, weight: "bold", fill: accent, tracking: -0.01em, it.body)
      v(5mm)
      line(length: 100%, stroke: 0.5pt + rule)
    })
  }
  show heading.where(level: 2): it => block(above: 2.1em, below: 0.95em, sticky: true,
    text(size: 1.2em, weight: "bold", {
      let number = marker(it)
      if number != none { text(fill: accent, number); h(0.7em) }
      it.body
    }))
  show heading.where(level: 3): it => block(above: 1.7em, below: 0.8em, sticky: true,
    text(size: 1.08em, weight: "bold", {
      let number = marker(it)
      if number != none { text(fill: accent, number); h(0.6em) }
      it.body
    }))
  show heading.where(level: 4): it => block(above: 1.4em, below: 0.7em, sticky: true,
    text(size: 1em, weight: "bold", fill: luma(60), it.body))
  show heading: it => if it.level > 4 {
    block(above: 1.3em, below: 0.6em, sticky: true,
      text(font: serif, style: "italic", weight: "regular", size: 1em, it.body))
  } else { it }

  // ---- Code -------------------------------------------------------------------------
  show raw: set text(font: mono, hyphenate: false, ligatures: false, number-type: auto)
  show raw.where(block: false): it => {
    // Mono type looks larger than the serif at the same size.
    set text(size: 0.86em)
    box(fill: accent.lighten(94%).desaturate(60%), outset: (y: 0.22em),
      inset: (x: 0.16em), radius: 1.5pt, it)
  }
  show raw.where(block: true): it => {
    set text(size: 0.8em)
    set par(justify: false, first-line-indent: 0em, leading: 0.5em, hanging-indent: 2em)
    // Each line is its own paragraph, so a line too long for the measure wraps with
    // its continuation indented; a zero-width space gives an empty line its height.
    show linebreak: none
    show raw.line: line => block(spacing: 0.5em, { line; if line.text == "" { sym.zws } })
    block(width: 100%, fill: gd-palette.paper, stroke: (left: 1.5pt + accent.lighten(55%)),
      inset: (left: 9pt, right: 8pt, y: 7pt), radius: (right: 2.5pt), breakable: true,
      above: 1.1em, below: 1.2em, it)
  }

  // ---- Links and references ---------------------------------------------------------
  let plain(c) = if c.has("text") { c.text } else if c.has("children") {
    c.children.map(plain).join(default: "")
  } else { "" }
  // A dark blue-green that reads as text in print and as a link on screen. A URL shown
  // as itself is never hyphenated.
  show link: it => {
    set text(fill: accent.darken(8%))
    if type(it.dest) == str and it.dest.ends-with(plain(it.body)) {
      set text(hyphenate: false)
      it
    } else { it }
  }
  state("gd-page-ref").update(_ => page-ref)

  // ---- Figures, tables, captions ------------------------------------------------------
  set figure(numbering: none, gap: 0.9em) // The build numbers figures as Sphinx does.
  show figure: set block(above: 1.6em, below: 1.6em)
  show figure.caption: it => {
    set text(size: 0.88em)
    set par(justify: false, first-line-indent: 0em)
    show strong: it => sans-text(fill: accent, size: 0.95em, it)
    block(width: 100%, it.body)
  }
  // A code block's caption is a small label just above it, like a file name tab.
  show figure.where(kind: raw): set figure(gap: 0.5em)
  show figure.where(kind: raw): it => {
    show figure.caption: c => block(width: 100%, sans-text(size: 0.8em, fill: quiet,
      hyphenate: false, c.body))
    it
  }
  // Cells align to the start even inside a figure, which centers its body.
  set table(stroke: none, inset: (x: 0.55em, y: 0.42em), align: start)
  set table.hline(stroke: 0.5pt + ink)
  show table: set text(size: 0.92em, number-type: "lining", number-width: "tabular")
  show table: set par(justify: false, first-line-indent: 0em, leading: 0.55em)
  // Booktabs: a heavy rule above and below, a light one under the head rows, which the
  // build draws, and no vertical rules. Head rows are bold.
  show table: it => {
    // Tables of the gd- helpers (field lists, grammars) have an auto column and no rules.
    if type(it.columns) == array and auto in it.columns { return it }
    let head = it.children.filter(c => c.func() == table.header)
    let columns = if type(it.columns) == int { it.columns } else { it.columns.len() }
    let rows = if head.len() == 0 { 0 } else {
      let spans = head.first().children.filter(c => c.func() != table.hline)
        .map(c => if c.func() == table.cell { c.at("colspan", default: 1) } else { 1 })
      calc.ceil(spans.sum(default: 0) / calc.max(columns, 1))
    }
    show table.cell: c => if c.y < rows { set text(weight: "bold"); c } else { c }
    block(stroke: (top: 0.9pt + ink, bottom: 0.9pt + ink), inset: (y: 0.15em),
      breakable: true, it)
  }
  show table.cell: set block(spacing: 0.6em)

  // ---- Quotes and footnotes ---------------------------------------------------------
  set quote(block: true)
  show quote.where(block: true): it => block(
    width: 100%, above: 1.35em, below: 1.35em,
    inset: (left: 14pt, right: 12pt, top: 9pt, bottom: 9pt),
    fill: gd-palette.paper.lighten(35%),
    stroke: (left: 3pt + rgb("#ae3d2c")),
    {
      set text(size: 0.98em, style: "italic")
      set par(first-line-indent: 0em)
      it.body
      if it.attribution != none {
        align(end, text(size: 0.9em, style: "normal", fill: quiet)[- #it.attribution])
      }
    }
  )
  set footnote.entry(separator: line(length: 25%, stroke: 0.5pt + rule), clearance: 1em,
    gap: 0.5em, indent: 0em)
  show footnote.entry: set text(size: 0.84em)
  show footnote.entry: set par(first-line-indent: 0em, leading: 0.5em)

  // ---- Title page and colophon ------------------------------------------------------
  let lang-key = lower(lang.replace("_", "-").split("-").first())
  let cover-copy = (
    en: (
      kicker: "SOFTWARE  /  MODELS  /  SILICON HARDWARE  /  HUMAN PROGRESS",
      sub: "Why export controls reach beyond code and model weights into the physical hardware beneath open-source AI, and what happens to humanity when shared minds meet border walls.",
      ai: "AI & CHIP GATES", bio: "BIOMEDICINE", solar: "SOLAR MACHINES",
      foot: "ILLUSTRATED EDITION  •  02 NOV 2026",
    ),
    zh: (
      kicker: "软件协议  /  模型权重  /  芯片算力底座  /  人类共同进步",
      sub: "当技术管制不仅越过代码与模型权重，更深入晶圆、存储与万卡硬件集群：从思想公地到高墙关口的纪实与博弈推演。",
      ai: "AI与芯片关口", bio: "生物医药", solar: "光伏装备",
      foot: "图解纪实版  •  2026年11月2日",
    ),
    ja: (
      kicker: "ソフトウェア  /  モデル重み  /  半導体ハードウェア  /  人類の進歩",
      sub: "コードやモデル重みにとどまらず、その土台となる半導体・クラスタ装置にまで及ぶ輸出管理が、オープンソースAIと人類の未来をどう変えるのか。",
      ai: "AI・半導体項目", bio: "バイオ医薬", solar: "太陽光装置",
      foot: "図解ビジュアル版  •  2026年11月2日",
    ),
    ko: (
      kicker: "소프트웨어  /  모델 가중치  /  반도체 하드웨어  /  인류의 진보",
      sub: "코드와 가중치를 넘어 칩·메모리·초대형 클러스터 하드웨어까지 파고든 수출 통제가 오픈소스 AI와 인류의 미래를 어떻게 바꾸는가.",
      ai: "AI·반도체 관문", bio: "바이오의약", solar: "태양광 장비",
      foot: "일러스트 에디션  •  2026년 11월 2일",
    ),
    hi: (
      kicker: "सॉफ्टवेयर  /  मॉडल वेट्स  /  सिलिकॉन हार्डवेयर  /  मानव प्रगति",
      sub: "जब निर्यात नियंत्रण केवल कोड और मॉडल तक नहीं रुकते, बल्कि चिप्स व हार्डवेयर की जड़ों तक पहुँचते हैं: साझा मानवीय ज्ञान के भविष्य की सचित्र कथा।",
      ai: "AI व चिप द्वार", bio: "जैव-चिकित्सा", solar: "सौर मशीनरी",
      foot: "सचित्र संस्करण  •  2 नवंबर 2026",
    ),
    es: (
      kicker: "SOFTWARE  /  MODELOS  /  HARDWARE DE SILICIO  /  PROGRESO HUMANO",
      sub: "Por qué los controles de exportación no se detienen en el código ni en los pesos del modelo, sino que alcanzan los chips y máquinas que sostienen la IA abierta.",
      ai: "PUERTAS IA Y CHIPS", bio: "BIOMEDICINA", solar: "EQUIPOS SOLARES",
      foot: "EDICIÓN ILUSTRADA  •  2 NOV 2026",
    ),
    de: (
      kicker: "SOFTWARE  /  MODELLE  /  SILIZIUM-HARDWARE  /  FORTSCHRITT",
      sub: "Warum Exportkontrollen nicht bei Code und Modellgewichten enden, sondern bis zu den Chips und Rechenclustern unter der offenen KI reichen.",
      ai: "KI- & CHIP-TORE", bio: "BIOMEDIZIN", solar: "SOLAR-ANLAGEN",
      foot: "ILLUSTRIERTE AUSGABE  •  2. NOV. 2026",
    ),
  ).at(lang-key, default: (
    kicker: "SOFTWARE  /  MODELS  /  SILICON HARDWARE  /  HUMAN PROGRESS",
    sub: "Why export controls reach beyond code and model weights into the physical hardware beneath open-source AI, and what happens to humanity when shared minds meet border walls.",
    ai: "AI & CHIP GATES", bio: "BIOMEDICINE", solar: "SOLAR MACHINES",
    foot: "ILLUSTRATED EDITION  •  02 NOV 2026",
  ))
  page(paper: paper, margin: (x: 22mm, top: 18mm, bottom: 18mm), fill: rgb("#fafaf7"), header: none, footer: none, numbering: none)[
    #set par(justify: false, first-line-indent: 0em)
    #sans-text(size: 8.8pt, weight: "bold", tracking: 0.1em, fill: rgb("#ae3d2c"))[#cover-copy.kicker]
    #v(4mm)
    #line(length: 100%, stroke: 1pt + rgb("#172e38"))
    #v(6mm)
    #block(sans-text(size: 28pt, weight: "bold", tracking: -0.02em, hyphenate: false, fill: rgb("#172e38"), par(leading: 0.25em, title)))
    #v(3mm)
    #sans-text(size: 12pt, weight: "bold")[Vikrant Rathore]
    #v(3mm)
    #block(width: 95%, text(size: 11pt, fill: rgb("#3b4c54"), par(leading: 0.48em, cover-copy.sub)))
    #v(6mm)
    #block(width: 100%, inset: 5pt, fill: white, stroke: 0.7pt + rgb("#c9cec5"),
      image("../assets/illustrations/cover-pencil.jpg", width: 100%))
    #v(1fr)
    #grid(columns: (1fr, 1fr, 1fr), gutter: 8mm,
      [#sans-text(size: 29pt, weight: "bold", fill: rgb("#ae3d2c"))[23] #v(1.5mm) #sans-text(size: 9.2pt, weight: "bold", fill: rgb("#172e38"))[#cover-copy.ai]],
      [#sans-text(size: 29pt, weight: "bold", fill: rgb("#08716d"))[05] #v(1.5mm) #sans-text(size: 9.2pt, weight: "bold", fill: rgb("#172e38"))[#cover-copy.bio]],
      [#sans-text(size: 29pt, weight: "bold", fill: rgb("#986711"))[12] #v(1.5mm) #sans-text(size: 9.2pt, weight: "bold", fill: rgb("#172e38"))[#cover-copy.solar]])
    #v(5mm)
    #line(length: 100%, stroke: 0.5pt + rgb("#c9cec5"))
    #v(3.5mm)
    #sans-text(size: 8.8pt, fill: rgb("#546367"))[#cover-copy.foot #h(1fr) MOFCOM 48 / US EAR]
  ]
  let colophon-credit = (
    en: "Built with the help of GuideDog, with assistance from Jennifer Yuan, Vicky Ni, Ronak Rathore, and Kanak Rathore.",
    zh: "本书借助 GuideDog 构建，并获 Jennifer Yuan, Vicky Ni、Ronak Rathore 与 Kanak Rathore 鼎力协助。",
    ja: "本書は GuideDog の力を借り、Jennifer Yuan, Vicky Ni、Ronak Rathore、Kanak Rathore の協力を得て制作されました。",
    ko: "이 책은 GuideDog의 도움과 Jennifer Yuan, Vicky Ni, Ronak Rathore, Kanak Rathore의 조력으로 제작되었습니다.",
    hi: "यह पुस्तक GuideDog की सहायता तथा Jennifer Yuan, Vicky Ni, Ronak Rathore और Kanak Rathore के सहयोग से निर्मित की गई है।",
    es: "Construido con la ayuda de GuideDog y con la colaboración de Jennifer Yuan, Vicky Ni, Ronak Rathore y Kanak Rathore.",
    de: "Erstellt mit Hilfe von GuideDog sowie mit Unterstützung von Jennifer Yuan, Vicky Ni, Ronak Rathore und Kanak Rathore.",
  ).at(lang-key, default: "Built with the help of GuideDog, with assistance from Jennifer Yuan, Vicky Ni, Ronak Rathore, and Kanak Rathore.")
  page(paper: paper, margin: (x: 24mm, top: 26mm, bottom: 28mm), header: none,
    footer: none, numbering: none)[
    #set par(justify: false, first-line-indent: 0em, spacing: 0.9em)
    #set text(size: 9pt, fill: quiet, number-type: "lining")
    #v(1fr)
    #text(fill: ink, style: "italic", title)
    #v(4mm)
    #text(size: 9pt)[Vikrant Rathore / CC BY-SA 4.0]
    #text(size: 8pt)[Third-party materials retain their own copyrights and licenses. See NOTICE.]
    #v(2mm)
    #text(size: 8pt)[Jennifer Yuan, Vicky Ni, Ronak Rathore, Kanak Rathore]
    #if version != "" [ \ #version-label #version]
    #if copyright != "" [ \ \u{a9} #copyright]
    #if author != "" and copyright == "" [ \ #author]
    #if date != "" [ \ #date]
    \ #text(fill: ink, colophon-credit)
  ]

  // ---- The page ----------------------------------------------------------------------
  // Balanced margins leave room for tables and diagrams without crowding the text.
  let margins = (x: 31mm, top: 24mm, bottom: 25mm)
  let running = sans-text.with(size: 7.6pt, fill: quiet, tracking: 0.08em,
    number-type: "lining")
  let folio = sans-text.with(size: 8.5pt, weight: "bold", fill: ink,
    number-type: "lining")
  // Every page's head asks which pages open a part, which are left blank, and which
  // chapter and section a page is in. The answers come from one table of pages, made
  // once, at the end of the book, and kept in a state that each head reads (its final
  // value, from the previous layout pass) and searches by page: a query over the whole
  // book on every page would cost memory and time in proportion to both.
  let page-marks = state("gd-page-marks", none)
  let marks() = {
    let pages(it) = (it.location().page(), it)
    (starts: query(<gd-part-start>).map(pages),
      // Part starts and ends in document order, as (page, is an end).
      parts: query(selector(<gd-part-start>).or(<gd-part-end>))
        .map(it => (it.location().page(), it.label == <gd-part-end>)),
      chapters: query(heading.where(level: 1, outlined: true)).map(pages),
      sections: query(heading.where(level: 2, outlined: true)).map(pages))
  }
  // The index of the first (page, item) pair, in page order, on page pg or later.
  let from(pairs, pg) = {
    let (lo, hi) = (0, pairs.len())
    while lo < hi {
      let mid = calc.quo(lo + hi, 2)
      if pairs.at(mid).first() < pg { lo = mid + 1 } else { hi = mid }
    }
    lo
  }
  // A page that opens a chapter, the contents, or the main matter.
  let opening(m, pg) = {
    let i = from(m.starts, pg)
    i < m.starts.len() and m.starts.at(i).first() == pg
  }
  // A page left blank so a chapter can open on the right shows nothing at all: the
  // last part marker before it is an end, and the next begins a part on a later page.
  let blank(m, pg) = {
    let i = from(m.parts, pg)
    if i == 0 or not m.parts.at(i - 1).last() { return false }
    i < m.parts.len() and m.parts.at(i).first() > pg
  }
  // The last chapter that began on an earlier page.
  let chapter-of(m, pg) = {
    let i = from(m.chapters, pg)
    if i > 0 { m.chapters.at(i - 1).last() }
  }
  let chapter-name(hd) = {
    let number = marker(hd)
    if number != none { number; h(0.9em) }
    upper(hd.body)
  }
  // The first section to begin on the page, or else the last one before it within
  // the chapter.
  let section-name(m, pg, chapter) = {
    let i = from(m.sections, pg)
    if i < m.sections.len() and m.sections.at(i).first() == pg {
      return m.sections.at(i).last()
    }
    if i == 0 { return none }
    let (page, before) = m.sections.at(i - 1)
    if chapter == none or page >= chapter.location().page() { before }
  }
  set page(paper: paper, margin: margins, binding: left, numbering: "i",
    header-ascent: 38%, footer-descent: 40%,
    header: context {
      let pg = here().page()
      let m = page-marks.final()
      if m == none { return } // the first layout pass.
      if opening(m, pg) or blank(m, pg) { return }
      let chapter = chapter-of(m, pg)
      let number = folio(counter(page).display())
      if calc.even(pg) {
        number; h(1.4em)
        if chapter != none { running(chapter-name(chapter)) }
      } else {
        let section = section-name(m, pg, chapter)
        h(1fr)
        if section != none { running(upper(section.body)) } else if chapter != none {
          running(chapter-name(chapter))
        }
        h(1.4em); number
      }
    },
    footer: context {
      let pg = here().page()
      let m = page-marks.final()
      if m == none { return }
      if opening(m, pg) and not blank(m, pg) {
        align(center, folio(counter(page).display()))
      }
    })

  // ---- Contents -----------------------------------------------------------------------
  context {
    if query(heading.where(outlined: true)).len() > 0 {
      recto()
      {
        show heading: it => block(width: 100%, below: 2.6em, {
          v(22mm)
          line(length: 18mm, stroke: 2.2pt + accent)
          v(7mm)
          sans-text(size: 24pt, weight: "bold", hyphenate: false, it.body)
        })
        set par(justify: false, first-line-indent: 0em)
        set outline.entry(fill: box(width: 1fr, repeat(text(fill: rule, size: 0.8em)[.],
          gap: 0.45em)))
        show outline.entry: set text(number-type: "lining", number-width: "tabular")
        show outline.entry.where(level: 1): it => {
          v(1.05em, weak: true)
          link(it.element.location(), sans-text(weight: "bold", size: 0.95em, {
            let number = it.prefix()
            if number != none { box(width: 2.2em, text(fill: accent, number)) }
            it.body()
            h(1fr)
            it.page()
          }))
        }
        show outline.entry.where(level: 2): set block(spacing: 0.5em)
        outline(depth: 2, indent: auto)
      }
    }
  }

  // ---- The main matter ----------------------------------------------------------------
  recto()
  // The count restarts before the numbering changes, or the first page's head would
  // still show the old count.
  counter(page).update(1)
  set page(numbering: "1")
  body
  context page-marks.update(marks())
}
