// Shared native Typst + CeTZ + Fletcher diagrams for:
// "Impact of Export Controls on the Future of Open Source AI"
// Compiled directly by Guidedog's embedded Typst engine for both HTML (SVG) and PDF (A4).

#import "@preview/cetz:0.3.4"
#import "@preview/fletcher:0.5.8": diagram, node, edge

#let pal = (
  paper: rgb("#f9f6ef"),
  card: rgb("#ffffff"),
  ink: rgb("#172e38"),
  muted: rgb("#52656f"),
  rule: rgb("#d5cfc2"),
  teal: rgb("#08716d"),
  teal-soft: rgb("#e6f4f2"),
  red: rgb("#ae3d2c"),
  red-soft: rgb("#fbeae7"),
  gold: rgb("#b87d14"),
  gold-soft: rgb("#fdf5e3"),
  slate-soft: rgb("#eef2f5"),
)

#let script-fonts(lang) = {
  let code = lower(lang.replace("_", "-").split("-").first())
  let extra = (
    zh: ("Noto Serif CJK SC",),
    ja: ("Noto Serif CJK JP",),
    ko: ("Noto Serif CJK KR",),
    hi: ("Noto Serif Devanagari",),
  ).at(code, default: ())
  ("Lato", "Libertinus Serif") + extra
}

#let pick(dict, lang) = {
  let key = if lang.starts-with("zh") { "zh_CN" } else { lang.split("_").first() }
  dict.at(key, default: dict.en)
}

// ---------------------------------------------------------------------------
// 1. Game Theory Payoff Matrix + CeTZ Exponential Scrutiny Curve
// ---------------------------------------------------------------------------
#let game-labels = (
  en: (
    kicker: "MATHEMATICAL GAME THEORY · THE FORTRESS TRAP",
    title: "Why Broad Export Walls Push Humanity Backward & Multiply Danger",
    bloc-b: "BLOC B CHOICE →",
    bloc-a: "BLOC A ↓",
    open: "Open Commons (O)",
    wall: "Broad Wall (W)",
    oo-tag: "PARETO OPTIMUM · SHARED LIGHTHOUSE",
    oo-world: "World Welfare = 34  |  Danger R = 1×",
    oo-desc: "2k global teams audit flaws; hospitals & universities run local open AI.",
    ow-tag: "LONE OPENNESS",
    ow-world: "World = 23  |  Danger R = 2×",
    ow-desc: "Open side lags (-5) while hoarder free-rides (+8).",
    wo-tag: "ONE-SHOT TEMPTATION",
    wo-world: "World = 23  |  Danger R = 2×",
    wo-desc: "20 > 17 tempts unilateral walling.",
    ww-tag: "NASH EQUILIBRIUM · FORTRESS TRAP",
    ww-world: "World = 10 (−70%)  |  Danger R = 4×",
    ww-desc: "Zero lead (5 = 5), duplicated fabs, blind silos & disarmed defenders.",
    curve-title: "Linus's Law of Safety: Surviving Flaw Probability",
    curve-sub: "More independent eyes drive hidden AI & chip vulnerabilities down exponentially",
    axis-x: "Independent auditing communities (n)",
    axis-y: "Unnoticed flaw risk",
    wall-pt: "Walled silos (R = 4×)",
    open-pt: "Open commons (R = 1×)",
  ),
  zh_CN: (
    kicker: "数学博弈论 · 堡垒陷阱",
    title: "为何宽泛的出口高墙会让世界倒退且更加危险",
    bloc-b: "阵营 B 的选择 →",
    bloc-a: "阵营 A ↓",
    open: "开放公地 (O)",
    wall: "宽泛高墙 (W)",
    oo-tag: "帕累托最优 · 共享灯塔",
    oo-world: "全球总福祉 = 34  |  系统风险 R = 1×",
    oo-desc: "全球 2k 个独立团队审计漏洞；医院与高校本地部署开源模型。",
    ow-tag: "单方开放受损",
    ow-world: "全球 = 23  |  风险 R = 2×",
    ow-desc: "开放方短期落后 (-5)，筑墙方搭便车 (+8)。",
    wo-tag: "单步背叛诱惑",
    wo-world: "全球 = 23  |  风险 R = 2×",
    wo-desc: "20 > 17 诱使单边筑墙。",
    ww-tag: "纳什均衡 · 囚徒困境陷阱",
    ww-world: "全球 = 10（暴跌 70%） |  风险 R = 4×",
    ww-desc: "领先优势归零 (5 = 5)，晶圆厂重复建设，黑箱盲区与民用防御解除。",
    curve-title: "安全审查的指数律：致命漏洞幸存概率",
    curve-sub: "独立审计社区越多，隐藏的模型对齐缺陷与芯片漏洞呈指数级归零",
    axis-x: "独立审计社区数量 (n)",
    axis-y: "未发现漏洞风险",
    wall-pt: "封闭高墙 (R = 4×)",
    open-pt: "开放公地 (R = 1×)",
  ),
  ja: (
    kicker: "数理ゲーム理論 · 要塞の罠",
    title: "広範な輸出の壁が世界を後退させ危険を4倍にする理由",
    bloc-b: "陣営 B の選択 →",
    bloc-a: "陣営 A ↓",
    open: "開かれた共有地 (O)",
    wall: "広範な壁 (W)",
    oo-tag: "パレート最適 · 共有の灯台",
    oo-world: "世界厚生 = 34  |  危険度 R = 1×",
    oo-desc: "世界の2kチームが脆弱性を検証し、病院や大学がローカルAIを活用。",
    ow-tag: "単独開放の不利",
    ow-world: "世界 = 23  |  危険度 R = 2×",
    ow-desc: "開放側が遅れ(-5)、囲い込み側がただ乗り(+8)。",
    wo-tag: "一方的な囲い込みの誘惑",
    wo-world: "世界 = 23  |  危険度 R = 2×",
    wo-desc: "20 > 17 が単独規制を誘発。",
    ww-tag: "ナッシュ均衡 · 囚人のジレンマ",
    ww-world: "世界 = 10（−70%） |  危険度 R = 4×",
    ww-desc: "優位は相殺(5 = 5)、半導体投資は重複し、密室化で社会の防御力も低下。",
    curve-title: "安全性の指数法則：重大欠陥が見逃される確率",
    curve-sub: "独立した検証の目が増えるほど、AIと半導体の未知の欠陥は指数関数的に減少する",
    axis-x: "独立検証コミュニティ数 (n)",
    axis-y: "欠陥残存リスク",
    wall-pt: "閉鎖サイロ (R = 4×)",
    open-pt: "開放コモンズ (R = 1×)",
  ),
  ko: (
    kicker: "수리 게임이론 · 요새의 함정",
    title: "광범위한 수출 장벽이 세계를 후퇴시키고 위험을 키우는 이유",
    bloc-b: "진영 B의 선택 →",
    bloc-a: "진영 A ↓",
    open: "열린 공유지 (O)",
    wall: "광범위한 장벽 (W)",
    oo-tag: "파레토 최적 · 공유 등대",
    oo-world: "세계 후생 = 34  |  위험도 R = 1×",
    oo-desc: "전 세계 2k개 팀이 결함을 검증하고 병원·대학이 로컬 AI를 운영.",
    ow-tag: "단독 개방의 손실",
    ow-world: "세계 = 23  |  위험도 R = 2×",
    ow-desc: "개방 측은 뒤처지고(-5) 장벽 측은 무임승차(+8).",
    wo-tag: "단기 독점의 유혹",
    wo-world: "세계 = 23  |  위험도 R = 2×",
    wo-desc: "20 > 17 때문에 일방적 장벽 유혹 발생.",
    ww-tag: "내시 균형 · 죄수의 딜레마",
    ww-world: "세계 = 10 (−70%)  |  위험도 R = 4×",
    ww-desc: "격차 상쇄(5 = 5), 팹 중복 투자, 블랙박스 사각지대 및 민간 방어 약화.",
    curve-title: "안전 검증의 지수 법칙: 치명적 결함 생존 확률",
    curve-sub: "독립적인 검증 공동체가 많을수록 AI·칩 취약점은 지수적으로 감소",
    axis-x: "독립 감사 공동체 수 (n)",
    axis-y: "미발견 결함 위험",
    wall-pt: "폐쇄 장벽 (R = 4×)",
    open-pt: "열린 공유지 (R = 1×)",
  ),
  hi: (
    kicker: "गणितीय गेम थ्योरी · क़िले का जाल",
    title: "व्यापक निर्यात दीवारें दुनिया को पीछे और 4 गुना ख़तरनाक क्यों बनाती हैं",
    bloc-b: "गुट B का चुनाव →",
    bloc-a: "गुट A ↓",
    open: "खुला ज्ञान-साझा (O)",
    wall: "चौड़ी दीवार (W)",
    oo-tag: "परेटो सर्वोत्तम · साझा प्रकाशस्तंभ",
    oo-world: "विश्व कल्याण = 34  |  जोखिम R = 1×",
    oo-desc: "2k वैश्विक टीमें ख़ामियाँ पकड़ती हैं; अस्पताल व विश्वविद्यालय स्थानीय AI चलाते हैं।",
    ow-tag: "अकेले खुलेपन का नुक़सान",
    ow-world: "विश्व = 23  |  जोखिम R = 2×",
    ow-desc: "खुला पक्ष पिछड़ता है (-5), बंद पक्ष मुफ़्त लाभ लेता है (+8)।",
    wo-tag: "एकतरफ़ा दीवार का प्रलोभन",
    wo-world: "विश्व = 23  |  जोखिम R = 2×",
    wo-desc: "20 > 17 तात्कालिक बढ़त का लालच देता है।",
    ww-tag: "नैश संतुलन · क़ैदी की दुविधा",
    ww-world: "विश्व = 10 (−70%)  |  जोखिम R = 4×",
    ww-desc: "बढ़त शून्य (5 = 5), चिप कारख़ानों का दोहराव और नागरिक सुरक्षा निहत्थी।",
    curve-title: "सुरक्षा का घातीय नियम: अनदेखी ख़ामी बचने की संभावना",
    curve-sub: "जितनी अधिक स्वतंत्र आँखें जाँचेंगी, छिपे AI व चिप दोष उतनी तेज़ी से घटेंगे",
    axis-x: "स्वतंत्र ऑडिट समुदाय (n)",
    axis-y: "अनदेखा दोष जोखिम",
    wall-pt: "बंद दीवारें (R = 4×)",
    open-pt: "खुला साझा (R = 1×)",
  ),
  es: (
    kicker: "TEORÍA DE JUEGOS · LA TRAMPA DE LA FORTALEZA",
    title: "Por qué los muros amplios atrasan al mundo y cuadruplican el peligro",
    bloc-b: "DECISIÓN DEL BLOQUE B →",
    bloc-a: "BLOQUE A ↓",
    open: "Comunes Abiertos (O)",
    wall: "Muro Amplio (W)",
    oo-tag: "ÓPTIMO DE PARETO · FARO COMPARTIDO",
    oo-world: "Bienestar Mundial = 34  |  Riesgo R = 1×",
    oo-desc: "2k equipos auditan fallos; hospitales y universidades usan IA abierta local.",
    ow-tag: "APERTURA SOLITARIA",
    ow-world: "Mundo = 23  |  Riesgo R = 2×",
    ow-desc: "El bloque abierto se rezaga (-5) mientras el cerrado aprovecha (+8).",
    wo-tag: "TENTACIÓN UNILATERAL",
    wo-world: "Mundo = 23  |  Riesgo R = 2×",
    wo-desc: "20 > 17 tienta a levantar el primer muro.",
    ww-tag: "EQUILIBRIO DE NASH · DILEMA DEL PRISIONERO",
    ww-world: "Mundo = 10 (−70%)  |  Riesgo R = 4×",
    ww-desc: "Ventaja nula (5 = 5), fábricas duplicadas, cajas negras y defensas civiles ciegas.",
    curve-title: "Ley Exponencial de Seguridad: Fallos No Detectados",
    curve-sub: "Más comunidades independientes reducen exponencialmente los fallos ocultos",
    axis-x: "Comunidades auditoras independientes (n)",
    axis-y: "Riesgo de fallo oculto",
    wall-pt: "Silos cerrados (R = 4×)",
    open-pt: "Comunes abiertos (R = 1×)",
  ),
  de: (
    kicker: "SPIELTHEORIE · DIE FESTUNGSFALLE",
    title: "Warum breite Exportmauern die Welt zurückwerfen und vierfach gefährden",
    bloc-b: "WAHL VON BLOCK B →",
    bloc-a: "BLOCK A ↓",
    open: "Offene Allmende (O)",
    wall: "Breite Mauer (W)",
    oo-tag: "PARETO-OPTIMUM · GEMEINSAMER LEUCHTTURM",
    oo-world: "Weltwohlfahrt = 34  |  Risiko R = 1×",
    oo-desc: "2k Teams prüfen Fehler; Kliniken & Hochschulen nutzen lokale Open-AI.",
    ow-tag: "EINSEITIGE OFFENHEIT",
    ow-world: "Welt = 23  |  Risiko R = 2×",
    ow-desc: "Offene Seite fällt zurück (-5), Abschotter nutzt Wissen (+8).",
    wo-tag: "EINSEITIGE VERSUCHUNG",
    wo-world: "Welt = 23  |  Risiko R = 2×",
    wo-desc: "20 > 17 verlockt zum ersten Mauerbau.",
    ww-tag: "NASH-GLEICHGEWICHT · GEFANGENENDILEMMA",
    ww-world: "Welt = 10 (−70%)  |  Risiko R = 4×",
    ww-desc: "Null Vorsprung (5 = 5), doppelte Chipfabriken, Blackbox-Silos & schwache Abwehr.",
    curve-title: "Exponentielles Sicherheitsgesetz: Überlebende Fehler",
    curve-sub: "Mehr unabhängige Prüfer senken unentdeckte KI- und Chip-Schwachstellen exponentiell",
    axis-x: "Unabhängige Prüfgemeinschaften (n)",
    axis-y: "Unentdecktes Fehlerrisiko",
    wall-pt: "Geschlossene Silos (R = 4×)",
    open-pt: "Offene Allmende (R = 1×)",
  ),
)

#let payoff-cell(score, tag, world, desc, bg, border, accent) = block(
  width: 100%,
  fill: bg,
  stroke: 1.3pt + border,
  radius: 6pt,
  inset: 9pt,
)[
  #text(size: 7.2pt, weight: "bold", fill: accent, tracking: 0.04em, tag)
  #v(2pt)
  #text(size: 16pt, weight: "bold", fill: pal.ink, score)
  #v(2pt)
  #text(size: 8pt, weight: "bold", fill: accent, world)
  #v(3pt)
  #set par(leading: 0.42em)
  #text(size: 7.8pt, fill: pal.muted, desc)
]

#let game-theory-matrix(lang: "en") = {
  let t = pick(game-labels, lang)
  set text(font: script-fonts(lang), fill: pal.ink)
  block(
    width: 168mm,
    fill: pal.paper,
    stroke: 0.8pt + pal.rule,
    radius: 8pt,
    inset: 12pt,
  )[
    #text(size: 7.5pt, weight: "bold", fill: pal.teal, tracking: 0.08em, t.kicker)
    #v(2pt)
    #text(size: 12pt, weight: "bold", fill: pal.ink, t.title)
    #v(8pt)
    #grid(
      columns: (1.28fr, 0.92fr),
      column-gutter: 10pt,
      // Left: 2x2 Payoff Matrix
      block(width: 100%)[
        #grid(
          columns: (22mm, 1fr, 1fr),
          column-gutter: 6pt,
          row-gutter: 6pt,
          align(center + horizon, text(size: 7.5pt, weight: "bold", fill: pal.muted, t.bloc-a + "\n" + t.bloc-b)),
          align(center + horizon, block(fill: pal.teal-soft, radius: 4pt, inset: (x: 6pt, y: 4pt), width: 100%, text(size: 8.2pt, weight: "bold", fill: pal.teal, t.open))),
          align(center + horizon, block(fill: pal.red-soft, radius: 4pt, inset: (x: 6pt, y: 4pt), width: 100%, text(size: 8.2pt, weight: "bold", fill: pal.red, t.wall))),
          align(center + horizon, block(fill: pal.teal-soft, radius: 4pt, inset: 5pt, width: 100%, text(size: 8pt, weight: "bold", fill: pal.teal, t.open))),
          payoff-cell("(+17, +17)", t.oo-tag, t.oo-world, t.oo-desc, pal.teal-soft, pal.teal, pal.teal),
          payoff-cell("(+3, +20)", t.ow-tag, t.ow-world, t.ow-desc, pal.gold-soft, pal.gold, pal.gold),
          align(center + horizon, block(fill: pal.red-soft, radius: 4pt, inset: 5pt, width: 100%, text(size: 8pt, weight: "bold", fill: pal.red, t.wall))),
          payoff-cell("(+20, +3)", t.wo-tag, t.wo-world, t.wo-desc, pal.gold-soft, pal.gold, pal.gold),
          payoff-cell("(+5, +5)", t.ww-tag, t.ww-world, t.ww-desc, pal.red-soft, pal.red, pal.red),
        )
      ],
      // Right: CeTZ Exponential Safety Curve
      block(
        width: 100%,
        fill: pal.card,
        stroke: 0.8pt + pal.rule,
        radius: 6pt,
        inset: 9pt,
      )[
        #text(size: 8.5pt, weight: "bold", fill: pal.ink, t.curve-title)
        #v(2pt)
        #text(size: 7.4pt, fill: pal.muted, t.curve-sub)
        #v(6pt)
        #align(center, cetz.canvas(length: 8.2mm, {
          import cetz.draw: *
          // Axes
          line((0, 0), (6.4, 0), stroke: 0.9pt + pal.ink, mark: (end: ">"))
          line((0, 0), (0, 4.3), stroke: 0.9pt + pal.ink, mark: (end: ">"))
          // Grid lines
          for y in (1, 2, 3, 4) {
            line((0, y), (6.1, y), stroke: (paint: pal.rule, thickness: 0.5pt, dash: "dashed"))
          }
          // Exponential decay curve: y = 4.0 * exp(-0.42 * x)
          let pts = range(0, 61).map(i => {
            let x = i * 0.1
            (x, 3.95 * calc.exp(-0.42 * x))
          })
          line(..pts, stroke: 2pt + pal.teal)
          // Walled point (small n = 0.8)
          let wx = 0.8
          let wy = 3.95 * calc.exp(-0.42 * wx)
          circle((wx, wy), radius: 0.16, fill: pal.red, stroke: 1pt + white)
          content((wx + 0.25, wy + 0.32), anchor: "west", text(size: 7.2pt, weight: "bold", fill: pal.red, t.wall-pt))
          // Open commons point (large n = 5.0)
          let ox = 4.9
          let oy = 3.95 * calc.exp(-0.42 * ox)
          circle((ox, oy), radius: 0.16, fill: pal.teal, stroke: 1pt + white)
          content((ox - 0.1, oy + 0.55), anchor: "center", text(size: 7.2pt, weight: "bold", fill: pal.teal, t.open-pt))
          // Axis labels
          content((3.2, -0.55), text(size: 7pt, fill: pal.muted, t.axis-x))
          content((0.1, 4.55), anchor: "west", text(size: 7pt, fill: pal.muted, t.axis-y))
        }))
      ]
    )
  ]
}

// ---------------------------------------------------------------------------
// 2. CeTZ Sector Breakdown of the 40 Proposed Checkpoints + 3 Open Doors
// ---------------------------------------------------------------------------
#let atlas-labels = (
  en: (
    kicker: "ATTACHMENT 1 AT A GLANCE · 40 PROPOSED CHECKPOINTS",
    title: "14 Prohibited Walls (J), 26 Restricted Gates (X), and 3 Express Open Doors",
    prohibited: "Proposed Prohibited (J): 14",
    restricted: "Proposed Restricted (X): 26",
    ai: "AI, Chips & Superclusters (23)",
    ai-sub: "6 Prohibited · 17 Restricted (models, agents, chips, HBM/DRAM, >10k clusters)",
    solar: "Solar Ingots, Wafers & Machines (12)",
    solar-sub: "5 Prohibited · 7 Restricted + 18 controlled equipment types (Note 4)",
    bio: "Biomedicine & Gene Platforms (5)",
    bio-sub: "3 Prohibited · 2 Restricted (reusable CGT/siRNA platforms & unseen targets)",
    d1-code: "FOOTNOTE 1 · EXCLUDED",
    d1: "Already-public open-source AI & academic papers stay outside catalogue control.",
    d2-code: "FOOTNOTE 2 · APPLY & GO",
    d2: "Automatic licensing for new open-source AI, self-owned overseas clouds & chip tape-outs.",
    d3-code: "FOOTNOTE 3 · BIO RELIEF",
    d3: "Automatic licensing for biomedical out-licensing, joint R&D & health emergencies.",
  ),
  zh_CN: (
    kicker: "附件1全景概览 · 40项拟议技术管制点",
    title: "14道禁止红墙（J）、26道限制闸门（X）与3条开放快车道",
    prohibited: "拟禁止出口 (J)：14项",
    restricted: "拟限制出口 (X)：26项",
    ai: "人工智能、芯片与万卡集群 (23)",
    ai-sub: "6项禁止 · 17项限制（大模型、智能体、AI与存储芯片设计、超万卡集群）",
    solar: "光伏硅片、叠层电池与装备 (12)",
    solar-sub: "5项禁止 · 7项限制 + 注释4涵盖18类核心光伏制造装备",
    bio: "生物医药与基因平台 (5)",
    bio-sub: "3项禁止 · 2项限制（CGT/siRNA通用平台所有权与全新未公开靶点）",
    d1-code: "注释1 · 不纳入管理",
    d1: "已通过开源或公开发表论文进入公共领域的AI技术不纳入目录管理。",
    d2-code: "注释2 · 即报即出",
    d2: "新增开源AI出口、中资自建自营境外算力中心及境外芯片流片适用自动许可便利。",
    d3-code: "注释3 · 医药协作",
    d3: "生物医药对外授权许可、国际科研合作及公共卫生应急适用自动许可便利。",
  ),
  ja: (
    kicker: "付属書1の全体像 · 40の技術チェックポイント案",
    title: "禁止の赤い壁14項目（J）、制限ゲート26項目（X）、3つの開放レーン",
    prohibited: "輸出禁止案 (J)：14",
    restricted: "輸出制限案 (X)：26",
    ai: "AI・半導体設計・1万枚超クラスタ (23)",
    ai-sub: "禁止6 · 制限17（基盤モデル、エージェント、AI/メモリ設計、超大型クラスタ）",
    solar: "太陽光シリコン・タンデム電池・製造装置 (12)",
    solar-sub: "禁止5 · 制限7 ＋ 注4による主要製造装置18分類",
    bio: "バイオ医薬・遺伝子創薬基盤 (5)",
    bio-sub: "禁止3 · 制限2（CGT/siRNA基盤の所有権移転と未公開新規標的）",
    d1-code: "注1 · 管理対象外",
    d1: "既にオープンソースや学術論文で公開されたAI技術は目録管理の対象外。",
    d2-code: "注2 · 自動許可レーン",
    d2: "新規オープンソース公開、自社運営の海外計算拠点、海外テープアウトを迅速化。",
    d3-code: "注3 · 医療連携レーン",
    d3: "医薬ライセンス供与、国際共同研究、公衆衛生危機対応に自動許可を適用。",
  ),
  ko: (
    kicker: "부속서 1 한눈에 보기 · 40개 기술 체크포인트 초안",
    title: "금지 장벽 14개(J), 제한 관문 26개(X), 그리고 3개의 열린 급행 통로",
    prohibited: "수출 금지안 (J): 14",
    restricted: "수출 제한안 (X): 26",
    ai: "AI·반도체 설계·1만 장급 슈퍼클러스터 (23)",
    ai-sub: "금지 6 · 제한 17 (프런티어 모델, 에이전트, AI·메모리 칩 설계, 대규모 클러스터)",
    solar: "태양광 잉곳·웨이퍼·제조 장비 (12)",
    solar-sub: "금지 5 · 제한 7 + 주석 4의 핵심 태양광 장비 18종",
    bio: "바이오의약·유전자 플랫폼 (5)",
    bio-sub: "금지 3 · 제한 2 (재사용 CGT/siRNA 플랫폼 소유권 및 미공개 신규 표적)",
    d1-code: "주석 1 · 관리 제외",
    d1: "이미 오픈소스나 학술 논문으로 공개된 AI 기술은 목록 관리 대상에서 제외.",
    d2-code: "주석 2 · 자동 허가 패스트트랙",
    d2: "신규 오픈소스 AI, 자체 운영 해외 연산 센터, 해외 파운드리 테이프아웃 간소화.",
    d3-code: "주석 3 · 바이오 협력 특례",
    d3: "기술 라이선스 아웃, 국제 공동연구, 공중보건 위기 대응에 자동 허가 적용.",
  ),
  hi: (
    kicker: "संलग्नक 1 की झलक · 40 प्रस्तावित तकनीकी जाँच-बिंदु",
    title: "14 निषिद्ध दीवारें (J), 26 नियंत्रित द्वार (X), और 3 तेज़ खुले रास्ते",
    prohibited: "प्रस्तावित निषिद्ध (J): 14",
    restricted: "प्रस्तावित नियंत्रित (X): 26",
    ai: "AI, चिप डिज़ाइन व 10,000-कार्ड क्लस्टर (23)",
    ai-sub: "6 निषिद्ध · 17 नियंत्रित (मॉडल, एजेंट, AI/मेमोरी चिप डिज़ाइन, सुपरक्लस्टर)",
    solar: "सौर सिलिकॉन, वेफ़र व फ़ैक्ट्री मशीनें (12)",
    solar-sub: "5 निषिद्ध · 7 नियंत्रित + टिप्पणी 4 में 18 प्रमुख सौर मशीन श्रेणियाँ",
    bio: "बायोमेडिसिन व जीन प्लेटफ़ॉर्म (5)",
    bio-sub: "3 निषिद्ध · 2 नियंत्रित (CGT/siRNA प्लेटफ़ॉर्म स्वामित्व व नए लक्ष्य)",
    d1-code: "टिप्पणी 1 · नियंत्रण से बाहर",
    d1: "पहले से सार्वजनिक ओपन-सोर्स AI और प्रकाशित शोध-पत्र सूची से बाहर रहते हैं।",
    d2-code: "टिप्पणी 2 · त्वरित स्वतः अनुमति",
    d2: "नए ओपन-सोर्स AI, स्व-संचालित विदेशी क्लाउड व चिप टेप-आउट के लिए सरल मार्ग।",
    d3-code: "टिप्पणी 3 · चिकित्सा सहयोग",
    d3: "दवा लाइसेंसिंग, संयुक्त अनुसंधान और स्वास्थ्य आपातकाल हेतु स्वतः लाइसेंस सुविधा।",
  ),
  es: (
    kicker: "ANEXO 1 DE UN VISTAZO · 40 PUNTOS PROPUESTOS",
    title: "14 Muros Prohibidos (J), 26 Puertas Restringidas (X) y 3 Vías Rápidas Abiertas",
    prohibited: "Propuestos Prohibidos (J): 14",
    restricted: "Propuestos Restringidos (X): 26",
    ai: "IA, Diseño de Chips y Superclústeres (23)",
    ai-sub: "6 Prohibidos · 17 Restringidos (modelos, agentes, chips IA/DRAM y clústeres >10k)",
    solar: "Silicio Solar, Obleas y Maquinaria (12)",
    solar-sub: "5 Prohibidos · 7 Restringidos + 18 clases de equipos fotovoltaicos (Nota 4)",
    bio: "Biomedicina y Plataformas Génicas (5)",
    bio-sub: "3 Prohibidos · 2 Restringidos (plataformas CGT/siRNA y dianas inéditas)",
    d1-code: "NOTA 1 · EXCLUIDO",
    d1: "La IA de código abierto y artículos académicos ya públicos quedan fuera del catálogo.",
    d2-code: "NOTA 2 · VÍA RÁPIDA",
    d2: "Licencia automática para nueva IA abierta, nubes propias en el exterior y tape-out.",
    d3-code: "NOTA 3 · COOPERACIÓN MÉDICA",
    d3: "Licencia automática para licencias biomédicas, I+D conjunta y emergencias sanitarias.",
  ),
  de: (
    kicker: "ANHANG 1 AUF EINEN BLICK · 40 VORGESCHLAGENE PRÜFPUNKTE",
    title: "14 Verbotsmauern (J), 26 Genehmigungstore (X) und 3 offene Schnellspuren",
    prohibited: "Vorgeschlagen verboten (J): 14",
    restricted: "Vorgeschlagen beschränkt (X): 26",
    ai: "KI, Chipdesign & >10.000-Karten-Cluster (23)",
    ai-sub: "6 verboten · 17 beschränkt (Modelle, Agenten, KI-/Speicherchips, Supercluster)",
    solar: "Solarsilizium, Wafer & Produktionsanlagen (12)",
    solar-sub: "5 verboten · 7 beschränkt + 18 Klassen von PV-Kernmaschinen (Fußnote 4)",
    bio: "Biomedizin & Gen-Plattformen (5)",
    bio-sub: "3 verboten · 2 beschränkt (CGT-/siRNA-Plattformeigentum & neue Zielstrukturen)",
    d1-code: "FUSSNOTE 1 · AUSGENOMMEN",
    d1: "Bereits öffentliche Open-Source-KI und Fachpublikationen fallen nicht unter den Katalog.",
    d2-code: "FUSSNOTE 2 · EXPRESS-LIZENZ",
    d2: "Automatische Lizenzierung für neue Open-Source-KI, eigene Auslands-Clouds & Tape-outs.",
    d3-code: "FUSSNOTE 3 · MEDIZIN-KOOPERATION",
    d3: "Automatische Lizenzierung für Auslizenzierung, Forschung & Gesundheitsnotfälle.",
  ),
)

#let sector-bar(label, sub, p-count, r-count) = {
  let scale = 4.3mm
  block(width: 100%, inset: (y: 3pt))[
    #grid(
      columns: (1.05fr, 1.15fr),
      column-gutter: 10pt,
      block[
        #text(size: 8.8pt, weight: "bold", fill: pal.ink, label)
        #v(1.5pt)
        #text(size: 7.4pt, fill: pal.muted, sub)
      ],
      align(horizon, stack(
        dir: ltr,
        spacing: 2pt,
        rect(width: p-count * scale, height: 15pt, fill: pal.red, radius: (left: 3pt),
          align(center + horizon, text(size: 7.5pt, weight: "bold", fill: white, str(p-count) + "J"))),
        rect(width: r-count * scale, height: 15pt, fill: pal.gold, radius: (right: 3pt),
          align(center + horizon, text(size: 7.5pt, weight: "bold", fill: white, str(r-count) + "X"))),
      ))
    )
  ]
}

#let forty-checkpoints-chart(lang: "en") = {
  let t = pick(atlas-labels, lang)
  set text(font: script-fonts(lang), fill: pal.ink)
  block(
    width: 168mm,
    fill: pal.paper,
    stroke: 0.8pt + pal.rule,
    radius: 8pt,
    inset: 12pt,
  )[
    #text(size: 7.5pt, weight: "bold", fill: pal.teal, tracking: 0.08em, t.kicker)
    #v(2pt)
    #text(size: 11.5pt, weight: "bold", fill: pal.ink, t.title)
    #v(5pt)
    #stack(
      dir: ltr,
      spacing: 12pt,
      stack(dir: ltr, spacing: 4pt, rect(width: 9pt, height: 9pt, fill: pal.red, radius: 2pt), text(size: 8pt, weight: "bold", fill: pal.red, t.prohibited)),
      stack(dir: ltr, spacing: 4pt, rect(width: 9pt, height: 9pt, fill: pal.gold, radius: 2pt), text(size: 8pt, weight: "bold", fill: pal.gold, t.restricted)),
    )
    #v(6pt)
    #block(fill: pal.card, stroke: 0.7pt + pal.rule, radius: 6pt, inset: 9pt, width: 100%)[
      #sector-bar(t.ai, t.ai-sub, 6, 17)
      #line(length: 100%, stroke: 0.5pt + pal.rule)
      #sector-bar(t.solar, t.solar-sub, 5, 7)
      #line(length: 100%, stroke: 0.5pt + pal.rule)
      #sector-bar(t.bio, t.bio-sub, 3, 2)
    ]
    #v(8pt)
    #grid(
      columns: (1fr, 1fr, 1fr),
      column-gutter: 7pt,
      ..((t.d1-code, t.d1), (t.d2-code, t.d2), (t.d3-code, t.d3)).map(pair => block(
        width: 100%,
        fill: pal.teal-soft,
        stroke: 1pt + pal.teal,
        radius: 5pt,
        inset: 8pt,
      )[
        #text(size: 7.3pt, weight: "bold", fill: pal.teal, tracking: 0.05em, pair.first())
        #v(3pt)
        #set par(leading: 0.42em)
        #text(size: 7.8pt, fill: pal.ink, pair.last())
      ])
    )
  ]
}

// ---------------------------------------------------------------------------
// 3. Fletcher Two-Clocks Diagram (Announcement 48's Immediate vs Proposed Rules)
// ---------------------------------------------------------------------------
#let clocks-labels = (
  en: (
    kicker: "ANNOUNCEMENT NO. 48 · TWO SEPARATE CLOCKS",
    title: "What Started on 16 October 2026 vs. What Remains a Proposal",
    origin: "16 Oct 2026\nMOFCOM & MOST\nAnnouncement 48",
    c1: "CLOCK 1 · CONSULTATION\n16 Oct – 15 Nov 2026\n40 Catalogue Points",
    c1-out: "Final Revised Catalogue\n(Future unfixed date:\nJ bans & X licenses begin)",
    c2: "CLOCK 2 · LIVE TODAY\necomp.mofcom.gov.cn\nAttachment 2 Registration",
    c2-out: "4 Triggers Covered Now:\n1. IP sale abroad  2. Foreign license\n3. Foreign control shift  4. Notices",
  ),
  zh_CN: (
    kicker: "2026年第48号公告 · 两套并行时钟",
    title: "2026年10月16日已生效的登记义务 vs. 仍在征求意见的目录草案",
    origin: "2026年10月16日\n商务部 · 科技部\n第48号公告发布",
    c1: "时钟一 · 公开征求意见\n10月16日 – 11月15日\n40项拟新增管制技术",
    c1-out: "正式修订目录出台\n（生效日待定：\n禁止J与限制X许可启动）",
    c2: "时钟二 · 当日立即执行\necomp.mofcom.gov.cn\n附件2出口前信息登记",
    c2-out: "4类情形须在完成前登记：\n1.权属跨境转移  2.境外使用许可\n3.实控人变更为境外  4.其他通知情形",
  ),
  ja: (
    kicker: "2026年第48号公告 · 2つの異なる時計",
    title: "10月16日に即日始まった事前登録 vs. 意見募集中の目録改正案",
    origin: "2026年10月16日\n商務部・科学技術部\n第48号公告",
    c1: "時計1 · パブリックコメント\n10月16日〜11月15日\n40項目の目録追加案",
    c1-out: "改正目録の正式公布\n（施行日は未定：\n禁止J・制限Xの許可開始）",
    c2: "時計2 · 即日運用中\necomp.mofcom.gov.cn\n付属書2 輸出前情報登録",
    c2-out: "対象となる4取引（継続中含む）：\n1.知財譲渡 2.海外ライセンス\n3.外国支配への変更 4.その他通知",
  ),
  ko: (
    kicker: "2026년 제48호 공고 · 두 개의 서로 다른 시계",
    title: "10월 16일 즉시 시작된 사전 등록 vs. 아직 초안인 목록 개정안",
    origin: "2026년 10월 16일\n상무부 · 과학기술부\n제48호 공고",
    c1: "시계 1 · 의견 수렴 초안\n10월 16일 – 11월 15일\n40개 기술 추가 제안",
    c1-out: "개정 목록 정식 공포\n(시행일 미정:\n금지 J · 제한 X 허가 발효)",
    c2: "시계 2 · 현재 즉시 시행 중\necomp.mofcom.gov.cn\n부속서 2 수출 전 정보 등록",
    c2-out: "완료 전 등록 필수 4대 거래:\n1. 권리 이전  2. 해외 라이선스\n3. 외국 지배권 변경  4. 추가 고시",
  ),
  hi: (
    kicker: "घोषणा सं. 48 · दो अलग-अलग घड़ियाँ",
    title: "16 अक्टूबर 2026 से तुरंत लागू पंजीकरण बनाम प्रस्तावित सूची संशोधन",
    origin: "16 अक्टूबर 2026\nMOFCOM और MOST\nघोषणा सं. 48",
    c1: "घड़ी 1 · जन-परामर्श\n16 अक्टू – 15 नवम्बर 2026\n40 प्रस्तावित तकनीक बिंदु",
    c1-out: "अंतिम संशोधित सूची\n(भविष्य की तिथि:\nJ रोक व X लाइसेंस लागू)",
    c2: "घड़ी 2 · आज से सक्रिय\necomp.mofcom.gov.cn\nसंलग्नक 2 पूर्व-पंजीकरण",
    c2-out: "4 लेन-देन अभी शामिल:\n1. IP बिक्री  2. विदेशी लाइसेंस\n3. विदेशी नियंत्रण बदलाव  4. सूचनाएँ",
  ),
  es: (
    kicker: "ANUNCIO N.º 48 · DOS RELOJES DISTINTOS",
    title: "Qué empezó el 16 de octubre de 2026 frente a qué sigue en consulta",
    origin: "16 oct 2026\nMOFCOM y MOST\nAnuncio N.º 48",
    c1: "RELOJ 1 · CONSULTA PÚBLICA\n16 oct – 15 nov 2026\n40 puntos propuestos",
    c1-out: "Catálogo Final Revisado\n(Fecha futura sin fijar:\ninician muros J y licencias X)",
    c2: "RELOJ 2 · ACTIVO HOY\necomp.mofcom.gov.cn\nRegistro Previo (Anexo 2)",
    c2-out: "4 operaciones cubiertas hoy:\n1. Venta IP  2. Licencia exterior\n3. Control extranjero  4. Avisos",
  ),
  de: (
    kicker: "BEKANNTMACHUNG NR. 48 · ZWEI VERSCHIEDENE UHREN",
    title: "Was am 16. Oktober 2026 sofort begann vs. was noch Entwurf ist",
    origin: "16. Okt. 2026\nMOFCOM & MOST\nBekanntmachung 48",
    c1: "UHR 1 · KONSULTATION\n16. Okt. – 15. Nov. 2026\n40 vorgeschlagene Punkte",
    c1-out: "Endgültiger Katalog\n(Datum noch offen:\nJ-Verbote & X-Lizenzen)",
    c2: "UHR 2 · HEUTE AKTIV\necomp.mofcom.gov.cn\nVorab-Registrierung (Anhang 2)",
    c2-out: "4 Auslöser gelten sofort:\n1. IP-Verkauf  2. Auslandslizenz\n3. Ausländische Kontrolle  4. Hinweise",
  ),
)

#let two-clocks-timeline(lang: "en") = {
  let t = pick(clocks-labels, lang)
  set text(font: script-fonts(lang), fill: pal.ink)
  block(
    width: 168mm,
    fill: pal.paper,
    stroke: 0.8pt + pal.rule,
    radius: 8pt,
    inset: 12pt,
  )[
    #text(size: 7.5pt, weight: "bold", fill: pal.teal, tracking: 0.08em, t.kicker)
    #v(2pt)
    #text(size: 11.5pt, weight: "bold", fill: pal.ink, t.title)
    #v(8pt)
    #align(center, diagram(
      spacing: (14mm, 8mm),
      node-stroke: 1.1pt,
      node-corner-radius: 6pt,
      edge-stroke: 1.2pt + pal.ink,
      node((0, 0.5), align(center, text(size: 8.2pt, weight: "bold", t.origin)),
        fill: pal.card, stroke: 1.2pt + pal.ink, inset: 9pt),
      node((1, 0), align(center, text(size: 8pt, weight: "bold", fill: pal.gold, t.c1)),
        fill: pal.gold-soft, stroke: 1.2pt + pal.gold, inset: 8pt),
      node((2, 0), align(center, text(size: 7.8pt, t.c1-out)),
        fill: pal.card, stroke: (paint: pal.gold, thickness: 1.1pt, dash: "dashed"), inset: 8pt),
      node((1, 1), align(center, text(size: 8pt, weight: "bold", fill: pal.red, t.c2)),
        fill: pal.red-soft, stroke: 1.2pt + pal.red, inset: 8pt),
      node((2, 1), align(center, text(size: 7.8pt, t.c2-out)),
        fill: pal.teal-soft, stroke: 1.2pt + pal.teal, inset: 8pt),
      edge((0, 0.5), (1, 0), "->", stroke: 1.2pt + pal.gold),
      edge((1, 0), (2, 0), "-->", stroke: 1.2pt + pal.gold),
      edge((0, 0.5), (1, 1), "->", stroke: 1.3pt + pal.red),
      edge((1, 1), (2, 1), "->", stroke: 1.3pt + pal.teal),
    ))
  ]
}

// ---------------------------------------------------------------------------
// 4. Three-Layer Hardware + Software Stack of Open-Source AI
// ---------------------------------------------------------------------------
#let stack-labels = (
  en: (
    kicker: "MIND & SILICON · THE FULL AI EXPORT-CONTROL STACK",
    title: "Why Open-Source AI Depends on Both Software Weights and Physical Hardware",
    l3-tag: "LAYER 3 · BAKERY WINDOW & PUBLIC COMMONS (OUTSIDE LICENSING)",
    l3-title: "Remote APIs, Web/Mobile Apps, Edge Models & Already-Public Open Weights",
    l3-body: "China Note 1 & MOFCOM Q&A + US 15 CFR 734.7 / 4E091 leave public MIT & Apache 2.0 repos and ordinary SaaS/API calls free to cross borders.",
    l2-tag: "LAYER 2 · SOURDOUGH RECIPE (MODEL WEIGHTS, CHECKPOINTS & AGENTS)",
    l2-title: "Frontier Cores (266504X: ≥10²⁶ FLOPs | ≥2T Params | Global Top-10) & US 4E091",
    l2-body: "Private cross-border weight transfers need licenses; PRC Core Data models (266501J) are barred; new Chinese open-source AI gets Note 2 automatic-licensing fast track.",
    l1-tag: "LAYER 1 · CAST-IRON OVEN (PHYSICAL SILICON, MEMORY & SUPERCLUSTERS)",
    l1-title: "US AI Chips (3A090 / H200 Review) + China Chip Designs (266506X) & >10k Clusters (266507X)",
    l1-body: "Controls clamp lithography, ≤14nm AI chip blueprints, ≤18nm DRAM/HBM & 3D NAND designs, 800 GB/s cluster fabrics, and multi-vendor GPU pools (Note 2 eases overseas tape-outs).",
  ),
  zh_CN: (
    kicker: "心智与硅基 · 开源人工智能的软硬件全栈管制图谱",
    title: "为何开源AI的未来同时取决于软件权重与物理硬件底座",
    l3-tag: "第三层 · 面包店窗口与公共领域（目录管理之外）",
    l3-title: "远程 API 调用、网页/移动应用、端侧轻量模型与已公开开源权重",
    l3-body: "中国注释1与商务部答记者问、美国 15 CFR 734.7 与 4E091 均明确：已公开的 MIT/Apache 2.0 模型及普通远程 API 服务无需出口许可。",
    l2-tag: "第二层 · 酵种与母本配方（模型权重、检查点、训练代码与智能体）",
    l2-title: "前沿大模型核心技术（266504X：≥10²⁶ FLOPs | ≥2万亿参数 | 全球前十）与美国 4E091",
    l2-body: "私下跨境交付权重须办许可；核心数据模型（266501J）拟禁；中国新增开源AI出口享注释2“即报即出”自动许可。",
    l1-tag: "第一层 · 铸铁烤炉与算力底座（物理芯片、高带宽存储与万卡超算集群）",
    l1-title: "美国算力芯片（3A090/H200审查）+ 中国AI/存储芯片设计（266506X）与超万卡集群（266507X）",
    l1-body: "管制覆盖光刻与≤14nm处理器架构、≤18nm DRAM/HBM及3D NAND设计、800 GB/s高速互联及异构混训（注释2保障境外流片）。",
  ),
  ja: (
    kicker: "知性とシリコン · オープンソースAIを支えるソフト・ハード3層構造",
    title: "オープンAIの未来が「モデルの重み」と「物理ハードウェア」の両方で決まる理由",
    l3-tag: "第3層 · ベーカリーの窓口と公開コモンズ（許可対象外）",
    l3-title: "リモートAPI・アプリ提供・軽量エッジモデル・公開済みオープン重み",
    l3-body: "中国注1・商務部Q&Aおよび米国15 CFR 734.7 / 4E091により、公開済みMIT/Apache 2.0モデルや通常のAPI利用は対象外。",
    l2-tag: "第2層 · パン種と秘伝レシピ（重み・チェックポイント・学習コード・エージェント）",
    l2-title: "フロンティア中核技術（266504X：≥10²⁶ FLOPs | ≥2兆パラメータ | 世界Top10）と米国4E091",
    l2-body: "非公開重みの越境移転は許可対象。コアデータ学習モデル(266501J)は禁止案。新規オープンソース公開は注2の自動許可へ。",
    l1-tag: "第1層 · 鋳鉄の窯と電力網（半導体・HBMメモリ・1万枚超スーパークラスタ）",
    l1-title: "米国AIチップ(3A090) ＋ 中国AI/メモリ設計(266506X)・1万枚超クラスタ技術(266507X)",
    l1-body: "≤14nm AI設計、≤18nm DRAM/HBM・3D NAND、800 GB/s相互接続、異種GPU統合を管理（注2で海外テープアウトを円滑化）。",
  ),
  ko: (
    kicker: "지성과 실리콘 · 오픈소스 AI의 소프트웨어·하드웨어 3계층 구조",
    title: "오픈소스 AI의 미래가 모델 가중치와 물리적 하드웨어 모두에 달린 이유",
    l3-tag: "3계층 · 베이커리 창구와 공개 공유지 (수출 허가 제외)",
    l3-title: "원격 API · 웹/앱 서비스 · 경량 온디바이스 모델 · 이미 공개된 오픈 가중치",
    l3-body: "중국 주석 1·상무부 Q&A 및 미국 15 CFR 734.7 / 4E091에 따라 이미 공개된 MIT/Apache 2.0 모델과 일반 API 서비스는 자유롭게 이동.",
    l2-tag: "2계층 · 천연 발효종과 레시피 (가중치 · 체크포인트 · 학습 코드 · 에이전트)",
    l2-title: "프런티어 모델 핵심 기술 (266504X: ≥10²⁶ FLOPs | ≥2조 파라미터 | 글로벌 Top 10) 및 미국 4E091",
    l2-body: "비공개 가중치 이전은 허가 대상, 핵심 데이터 모델(266501J)은 금지안, 신규 오픈소스 공개는 주석 2 자동 허가 패스트트랙 적용.",
    l1-tag: "1계층 · 무쇠 오븐과 발전소 (물리적 AI 칩 · HBM 메모리 · 1만 장급 클러스터)",
    l1-title: "미국 AI 칩(3A090) + 중국 AI/메모리 칩 설계(266506X) 및 >10,000장 클러스터(266507X)",
    l1-body: "≤14nm 칩 아키텍처, ≤18nm DRAM/HBM·3D NAND, 800 GB/s 인터커넥트, 이종 GPU 통합을 통제 (주석 2로 해외 테이프아웃 지원).",
  ),
  hi: (
    kicker: "मस्तिष्क और सिलिकॉन · ओपन-सोर्स AI की संपूर्ण सॉफ़्टवेयर-हार्डवेयर संरचना",
    title: "ओपन-सोर्स AI का भविष्य मॉडल वेट्स और भौतिक हार्डवेयर दोनों पर क्यों टिका है",
    l3-tag: "परत 3 · बेकरी की खिड़की और सार्वजनिक साझा (लाइसेंस से मुक्त)",
    l3-title: "रिमोट API, वेब/मोबाइल ऐप, हल्के डिवाइस मॉडल व पहले से सार्वजनिक ओपन वेट्स",
    l3-body: "चीन की टिप्पणी 1 व MOFCOM Q&A तथा अमेरिकी 15 CFR 734.7 / 4E091 सार्वजनिक MIT/Apache 2.0 मॉडलों व सामान्य API सेवाओं को मुक्त रखते हैं।",
    l2-tag: "परत 2 · खमीर और मूल नुस्ख़ा (मॉडल वेट्स, चेकपॉइंट, ट्रेनिंग कोड व एजेंट)",
    l2-title: "फ़्रंटियर मॉडल तकनीक (266504X: ≥10²⁶ FLOPs | ≥2 ट्रिलियन पैरामीटर | ग्लोबल टॉप-10) व US 4E091",
    l2-body: "निजी वेट्स के हस्तांतरण पर लाइसेंस; कोर डेटा मॉडल (266501J) निषिद्ध; नए ओपन-सोर्स AI को टिप्पणी 2 की त्वरित स्वतः अनुमति।",
    l1-tag: "परत 1 · लोहे की भट्ठी (भौतिक AI चिप्स, HBM मेमोरी व 10,000-कार्ड सुपरक्लस्टर)",
    l1-title: "अमेरिकी AI चिप्स (3A090) + चीनी चिप डिज़ाइन (266506X) व >10k क्लस्टर (266507X)",
    l1-body: "≤14nm प्रोसेसर ब्लूप्रिंट, ≤18nm DRAM/HBM व 3D NAND, 800 GB/s इंटरकनेक्ट और बहु-विक्रेता GPU पूल नियंत्रित (टिप्पणी 2 से टेप-आउट सुगम)।",
  ),
  es: (
    kicker: "MENTE Y SILICIO · LA PILA COMPLETA DE HARDWARE Y SOFTWARE DE LA IA",
    title: "Por qué la IA abierta depende tanto de los pesos del modelo como del silicio físico",
    l3-tag: "CAPA 3 · VENTANA DE LA PANADERÍA Y DOMINIO PÚBLICO (SIN LICENCIA)",
    l3-title: "APIs remotas, apps web/móviles, modelos ligeros y pesos abiertos ya publicados",
    l3-body: "La Nota 1 y Q&A de MOFCOM junto con 15 CFR 734.7 / 4E091 de EE. UU. dejan libres los modelos públicos MIT/Apache 2.0 y las llamadas API.",
    l2-tag: "CAPA 2 · MASA MADRE Y RECETA (PESOS, CHECKPOINTS, CÓDIGO Y AGENTES)",
    l2-title: "Núcleos Frontera (266504X: ≥10²⁶ FLOPs | ≥2B parám. | Top-10 Mundial) y 4E091 de EE. UU.",
    l2-body: "Transferencias privadas requieren licencia; Datos Núcleo (266501J) prohibidos; nueva IA abierta recibe vía rápida automática (Nota 2).",
    l1-tag: "CAPA 1 · HORNO DE HIERRO (CHIPS FÍSICOS, MEMORIA HBM Y SUPERCLÚSTERES)",
    l1-title: "Chips IA EE. UU. (3A090) + Diseños de Chips/Memoria (266506X) y Clústeres >10k (266507X)",
    l1-body: "Controla arquitecturas ≤14nm, DRAM/HBM ≤18nm, 3D NAND, enlaces de 800 GB/s y orquestación multimarca (Nota 2 facilita el tape-out exterior).",
  ),
  de: (
    kicker: "GEIST & SILIZIUM · DER VOLLSTÄNDIGE KI-STAPEL AUS SOFTWARE UND HARDWARE",
    title: "Warum Open-Source-KI zugleich von Modellgewichten und physischer Hardware abhängt",
    l3-tag: "EBENE 3 · BÄCKEREIFENSTER & OFFENE ALLMENDE (GENEHMIGUNGSFREI)",
    l3-title: "Remote-APIs, Web-/Mobil-Apps, kompakte Gerätemodelle & bereits öffentliche Gewichte",
    l3-body: "Chinas Fußnote 1 & MOFCOM-Q&A sowie US 15 CFR 734.7 / 4E091 halten öffentliche MIT-/Apache-2.0-Modelle und API-Dienste frei.",
    l2-tag: "EBENE 2 · SAUERTEIG & REZEPT (GEWICHTE, CHECKPOINTS, TRAININGSCODE & AGENTEN)",
    l2-title: "Frontier-Kerne (266504X: ≥10²⁶ FLOPs | ≥2 Bio. Param. | Global Top-10) & US 4E091",
    l2-body: "Private Gewichtstransfers lizenzpflichtig; Kerndaten-Modelle (266501J) verboten; neue Open-Source-KI erhält Fußnote-2-Expresslizenz.",
    l1-tag: "EBENE 1 · GUSSEISERNER OFEN (KI-CHIPS, HBM-SPEICHER & >10.000-KARTEN-CLUSTER)",
    l1-title: "US-KI-Chips (3A090) + Chinas Chipdesigns (266506X) & Supercluster-Technik (266507X)",
    l1-body: "Erfasst ≤14nm-Chipbaupläne, ≤18nm-DRAM/HBM & 3D-NAND, 800-GB/s-Verbindungen und Multi-Vendor-Training (Fußnote 2 erleichtert Tape-outs).",
  ),
)

#let stack-layer(tag, title, body, bg, border, accent) = block(
  width: 100%,
  fill: bg,
  stroke: 1.2pt + border,
  radius: 6pt,
  inset: 9pt,
)[
  #text(size: 7.3pt, weight: "bold", fill: accent, tracking: 0.05em, tag)
  #v(2pt)
  #text(size: 9.5pt, weight: "bold", fill: pal.ink, title)
  #v(3pt)
  #set par(leading: 0.44em)
  #text(size: 8pt, fill: pal.muted, body)
]

#let ai-hardware-software-stack(lang: "en") = {
  let t = pick(stack-labels, lang)
  set text(font: script-fonts(lang), fill: pal.ink)
  block(
    width: 168mm,
    fill: pal.paper,
    stroke: 0.8pt + pal.rule,
    radius: 8pt,
    inset: 12pt,
  )[
    #text(size: 7.5pt, weight: "bold", fill: pal.teal, tracking: 0.08em, t.kicker)
    #v(2pt)
    #text(size: 11.5pt, weight: "bold", fill: pal.ink, t.title)
    #v(8pt)
    #stack(
      dir: ttb,
      spacing: 6pt,
      stack-layer(t.l3-tag, t.l3-title, t.l3-body, pal.teal-soft, pal.teal, pal.teal),
      align(center, text(size: 10pt, weight: "bold", fill: pal.muted, "▲   ▼")),
      stack-layer(t.l2-tag, t.l2-title, t.l2-body, pal.gold-soft, pal.gold, pal.gold),
      align(center, text(size: 10pt, weight: "bold", fill: pal.muted, "▲   ▼")),
      stack-layer(t.l1-tag, t.l1-title, t.l1-body, pal.red-soft, pal.red, pal.red),
    )
  ]
}
