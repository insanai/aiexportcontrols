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
// 1. Symmetric Game Theory Payoff Matrix + Many-Eyes Curve & Plain Scoreboard
// ---------------------------------------------------------------------------
#let game-labels = (
  en: (
    kicker: "PLAIN-LANGUAGE GAME THEORY · THE FORTRESS TRAP",
    title: "Two Countries, Two Choices: Why High Walls Leave Everyone Worse Off",
    sub: "Each box shows net gains for Country A and Country B when both choose at the same time.",
    country-b: "Country B →",
    country-a: "↓ Country A",
    share: "Share Openly (S)",
    wall: "Build a Wall (W)",
    ss-tag: "BOTH SHARE · SHARED LIGHTHOUSE",
    ss-score: "A: +17   |   B: +17",
    ss-world: "World Total = 34  ·  Bug Risk = 1×",
    ss-desc: "Both build on shared breakthroughs (+8) and audit bugs together. (Pareto Optimum)",
    sw-tag: "A SHARES ALONE · B WALLS UP",
    sw-score: "A: +3   |   B: +20",
    sw-world: "World Total = 23  ·  Bug Risk = 2×",
    sw-desc: "B still reads A's open work (+8) and grabs a short lead (+5); A lags (-5).",
    ws-tag: "A WALLS UP · B SHARES ALONE",
    ws-score: "A: +20   |   B: +3",
    ws-world: "World Total = 23  ·  Bug Risk = 2×",
    ws-desc: "A still reads B's open work (+8) and grabs a short lead (+5); B lags (-5).",
    ww-tag: "BOTH WALL UP · FORTRESS TRAP",
    ww-score: "A: +5   |   B: +5",
    ww-world: "World Total = 10 (-70%)  ·  Bug Risk = 4×",
    ww-desc: "Leads cancel to zero (5 = 5), chip plants duplicate (-1), bugs hide. (Nash Equilibrium)",
    curve-title: "Why Secrecy Multiplies Danger (Many-Eyes Law)",
    curve-sub: "Chance a dangerous bug survives unseen: P = p₀(1 - q)ⁿ",
    axis-x: "Independent teams testing openly (n)",
    axis-y: "Unseen bug risk",
    wall-pt: "Closed silos (4× risk)",
    open-pt: "Open sharing (1× risk)",
    guide-title: "How Every Box Is Scored (Plain Arithmetic)",
    g1: "+10  Homegrown R&D baseline earned by each country",
    g2: "+8   Shared-knowledge bonus when the other side shares (S)",
    g3: "-1   Duplicate-factory cost when building a high wall (W)",
    g4: "+5 / -5  One-sided race lead (cancels to 0 when both wall up)",
    g5: "Coin-flip bug check: 1 closed lab = 50% miss · 4 open = 6.2% · 10 open < 0.1%",
  ),
  zh_CN: (
    kicker: "通俗博弈论图解 · 堡垒陷阱",
    title: "两个国家、两种选择：为何筑起高墙反而让所有人受损",
    sub: "每个方格展示 A 国与 B 国同时做出选择时，各自获得的净收益得分。",
    country-b: "B 国的选择 →",
    country-a: "↓ A 国的选择",
    share: "公开共享 (S)",
    wall: "筑起高墙 (W)",
    ss-tag: "双方共享 · 共建灯塔",
    ss-score: "A: +17   |   B: +17",
    ss-world: "全球总收益 = 34  ·  漏洞风险 = 1×",
    ss-desc: "双方共享科研突破 (+8) 并联合排查隐患，医院与高校皆可受益。（帕累托最优）",
    sw-tag: "A 单独共享 · B 筑起高墙",
    sw-score: "A: +3   |   B: +20",
    sw-world: "全球总收益 = 23  ·  漏洞风险 = 2×",
    sw-desc: "B 照看 A 的开源成果 (+8) 并抢占短期领先 (+5)；A 暂时落后 (-5)。",
    ws-tag: "A 筑起高墙 · B 单独共享",
    ws-score: "A: +20   |   B: +3",
    ws-world: "全球总收益 = 23  ·  漏洞风险 = 2×",
    ws-desc: "A 照看 B 的开源成果 (+8) 并抢占短期领先 (+5)；B 暂时落后 (-5)。",
    ww-tag: "双方筑墙 · 堡垒陷阱",
    ww-score: "A: +5   |   B: +5",
    ww-world: "全球总收益 = 10 (-70%)  ·  漏洞风险 = 4×",
    ww-desc: "领先优势互相抵消 (5 = 5)，产线重复建设 (-1)，黑箱隐患激增。（纳什均衡）",
    curve-title: "为何封闭反而放大危险（众目定律）",
    curve-sub: "致命漏洞未被发现而幸存的概率：P = p₀(1 - q)ⁿ",
    axis-x: "独立公开检测的团队数量 (n)",
    axis-y: "隐患漏检风险",
    wall-pt: "封闭黑箱 (4× 风险)",
    open-pt: "公开共享 (1× 风险)",
    guide-title: "方格得分怎么算？（五步日常算术）",
    g1: "+10  本国基础研发：各国独立科研自带的基础收益",
    g2: "+8   共享红利：只要对方选择公开共享 (S)，本国即可获益",
    g3: "-1   重复建设成本：选择筑起高墙 (W) 须自建全套重复产线",
    g4: "+5 / -5  单边领先差：仅一方筑墙时产生，双方都筑墙则抵消归零",
    g5: "抛硬币查漏洞直觉：1家封闭实验室漏检率 50% · 4家开放降至 6.2% · 10家低于 0.1%",
  ),
  ja: (
    kicker: "やさしいゲーム理論 · 要塞の罠",
    title: "2つの国と2つの選択：なぜ高い壁は全員を貧しく危険にするのか",
    sub: "各マスは、A国とB国が同時に選択したときに双方が得る純スコアを示します。",
    country-b: "B国の選択 →",
    country-a: "↓ A国の選択",
    share: "オープン共有 (S)",
    wall: "高い壁を築く (W)",
    ss-tag: "双方が共有 · 共有の灯台",
    ss-score: "A: +17   |   B: +17",
    ss-world: "世界合計 = 34  ·  欠陥リスク = 1×",
    ss-desc: "双方が公開知 (+8) を活かし共同で欠陥を検証。最も安全で豊か。（パレート最適）",
    sw-tag: "Aのみ共有 · Bは壁を築く",
    sw-score: "A: +3   |   B: +20",
    sw-world: "世界合計 = 23  ·  欠陥リスク = 2×",
    sw-desc: "BはAの公開成果 (+8) を学びつつ短期優位 (+5) を得て、Aは遅れる (-5)。",
    ws-tag: "Aは壁を築く · Bのみ共有",
    ws-score: "A: +20   |   B: +3",
    ws-world: "世界合計 = 23  ·  欠陥リスク = 2×",
    ws-desc: "AはBの公開成果 (+8) を学びつつ短期優位 (+5) を得て、Bは遅れる (-5)。",
    ww-tag: "双方が壁 · 要塞の罠",
    ww-score: "A: +5   |   B: +5",
    ww-world: "世界合計 = 10 (-70%)  ·  欠陥リスク = 4×",
    ww-desc: "優位は相殺 (5 = 5)、工場の重複 (-1) と密室の欠陥だけが残る。（ナッシュ均衡）",
    curve-title: "なぜ秘密主義は危険を4倍にするのか（衆目の法則）",
    curve-sub: "重大なバグが見逃される確率：P = p₀(1 - q)ⁿ",
    axis-x: "独立して公開検証するチーム数 (n)",
    axis-y: "バグ見逃しリスク",
    wall-pt: "閉鎖サイロ (4× 危険)",
    open-pt: "オープン共有 (1× 危険)",
    guide-title: "スコアの仕組み（シンプルな足し算・引き算）",
    g1: "+10  自国研究の基礎点：それぞれの国が独力で生み出す価値",
    g2: "+8   共有ボーナス：相手国がオープン共有 (S) を選ぶと得られる恩恵",
    g3: "-1   重複コスト：高い壁 (W) を築き半導体や設備を二重投資する負担",
    g4: "+5 / -5  単独リード：片方だけが壁を築いた時のみ発生（双方なら 0）",
    g5: "コイン投げの直感：密室1チームの見逃し50% · 公開4チームで6.2% · 10チームで0.1%未満",
  ),
  ko: (
    kicker: "쉬운 게임이론 · 요새의 함정",
    title: "두 나라, 두 가지 선택: 왜 높은 장벽은 모두를 더 위험하게 만드는가",
    sub: "각 칸은 A국과 B국이 동시에 선택했을 때 두 나라가 얻는 순점수를 보여줍니다.",
    country-b: "B국의 선택 →",
    country-a: "↓ A국의 선택",
    share: "열린 공유 (S)",
    wall: "높은 장벽 (W)",
    ss-tag: "모두 공유 · 함께 켜는 등대",
    ss-score: "A: +17   |   B: +17",
    ss-world: "세계 합계 = 34  ·  결함 위험 = 1×",
    ss-desc: "양국이 공개 연구(+8)를 나누고 결함을 함께 검증합니다. (파레토 최적)",
    sw-tag: "A만 공유 · B는 장벽",
    sw-score: "A: +3   |   B: +20",
    sw-world: "세계 합계 = 23  ·  결함 위험 = 2×",
    sw-desc: "B는 A의 공개 성과(+8)를 누리면서 단기 우위(+5)를 얻고, A는 뒤처집니다(-5).",
    ws-tag: "A는 장벽 · B만 공유",
    ws-score: "A: +20   |   B: +3",
    ws-world: "세계 합계 = 23  ·  결함 위험 = 2×",
    ws-desc: "A는 B의 공개 성과(+8)를 누리면서 단기 우위(+5)를 얻고, B는 뒤처집니다(-5).",
    ww-tag: "모두 장벽 · 요새의 함정",
    ww-score: "A: +5   |   B: +5",
    ww-world: "세계 합계 = 10 (-70%)  ·  결함 위험 = 4×",
    ww-desc: "우위는 상쇄되고(5 = 5), 중복 투자(-1)와 블랙박스 위험만 커집니다. (내시 균형)",
    curve-title: "왜 비밀주의가 위험을 4배로 키우는가 (많은 눈의 법칙)",
    curve-sub: "치명적 버그가 끝까지 숨겨질 확률: P = p₀(1 - q)ⁿ",
    axis-x: "독립적으로 공개 검증하는 팀 수 (n)",
    axis-y: "숨은 결함 위험",
    wall-pt: "폐쇄 장벽 (4× 위험)",
    open-pt: "열린 공유 (1× 위험)",
    guide-title: "점수 계산법 (누구나 이해하는 산수)",
    g1: "+10  자체 연구 기본점: 각국이 스스로 만들어내는 기본 가치",
    g2: "+8   공유 보너스: 상대국이 열린 공유(S)를 선택할 때 얻는 혜택",
    g3: "-1   중복 투자 비용: 높은 장벽(W) 뒤에서 공급망을 새로 짓는 비용",
    g4: "+5 / -5  일방적 우위: 한쪽만 장벽을 세울 때 발생 (둘 다 세우면 0으로 상쇄)",
    g5: "동전 던지기 비유: 밀실 1팀 놓칠 확률 50% · 공개 4팀 6.2% · 공개 10팀 0.1% 미만",
  ),
  hi: (
    kicker: "सरल गेम थ्योरी · क़िले का जाल",
    title: "दो देश, दो रास्ते: ऊँची दीवारें सबको पीछे और असुरक्षित क्यों धकेलती हैं",
    sub: "हर खाना दिखाता है कि देश A और देश B के एक साथ चुनाव करने पर दोनों को कितने अंक मिलते हैं।",
    country-b: "देश B का चुनाव →",
    country-a: "↓ देश A का चुनाव",
    share: "खुला साझा (S)",
    wall: "ऊँची दीवार (W)",
    ss-tag: "दोनों साझा करें · साझा प्रकाशस्तंभ",
    ss-score: "A: +17   |   B: +17",
    ss-world: "कुल विश्व लाभ = 34  ·  ख़ामी जोखिम = 1×",
    ss-desc: "दोनों साझा खोजों (+8) से सीखते हैं और मिलकर कमियाँ पकड़ते हैं। (परेटो सर्वोत्तम)",
    sw-tag: "A अकेला साझा करे · B दीवार बनाए",
    sw-score: "A: +3   |   B: +20",
    sw-world: "कुल विश्व लाभ = 23  ·  ख़ामी जोखिम = 2×",
    sw-desc: "B, A के खुले काम (+8) का लाभ लेकर बढ़त (+5) पाता है; A पिछड़ता है (-5)।",
    ws-tag: "A दीवार बनाए · B अकेला साझा करे",
    ws-score: "A: +20   |   B: +3",
    ws-world: "कुल विश्व लाभ = 23  ·  ख़ामी जोखिम = 2×",
    ws-desc: "A, B के खुले काम (+8) का लाभ लेकर बढ़त (+5) पाता है; B पिछड़ता है (-5)।",
    ww-tag: "दोनों दीवार बनाएँ · क़िले का जाल",
    ww-score: "A: +5   |   B: +5",
    ww-world: "कुल विश्व लाभ = 10 (-70%)  ·  ख़ामी जोखिम = 4×",
    ww-desc: "बढ़त शून्य (5 = 5), कारख़ानों का दोहरा खर्च (-1) और छिपे दोष चार गुने। (नैश संतुलन)",
    curve-title: "गोपनीयता ख़तरे को 4 गुना क्यों बढ़ाती है (अनेक आँखों का नियम)",
    curve-sub: "ख़तरनाक बग के अनदेखा बचने की संभावना: P = p₀(1 - q)ⁿ",
    axis-x: "स्वतंत्र रूप से जाँच करने वाली टीमें (n)",
    axis-y: "अनदेखी ख़ामी जोखिम",
    wall-pt: "बंद दीवारें (4× जोखिम)",
    open-pt: "खुला साझा (1× जोखिम)",
    guide-title: "हर खाने का हिसाब कैसे निकलता है? (सीधा गणित)",
    g1: "+10  घरेलू शोध आधार: हर देश की अपनी मेहनत से बनने वाला लाभ",
    g2: "+8   साझा ज्ञान बोनस: जब दूसरा देश खुला साझा (S) चुनता है",
    g3: "-1   दोहरा खर्च: ऊँची दीवार (W) बनाकर अलग कारख़ाने खड़े करने की लागत",
    g4: "+5 / -5  एकतरफ़ा बढ़त: केवल एक के दीवार बनाने पर (दोनों बनाएँ तो 0)",
    g5: "सिक्का उछाल उदाहरण: 1 बंद लैब चूक = 50% · 4 खुली टीमें = 6.2% · 10 टीमें < 0.1%",
  ),
  es: (
    kicker: "TEORÍA DE JUEGOS EN LENGUAJE CLARO · LA TRAMPA DE LA FORTALEZA",
    title: "Dos países, dos opciones: por qué los muros altos perjudican a todos",
    sub: "Cada casilla muestra la ganancia neta del País A y del País B al decidir al mismo tiempo.",
    country-b: "País B →",
    country-a: "↓ País A",
    share: "Compartir (S)",
    wall: "Alzar Muro (W)",
    ss-tag: "AMBOS COMPARTEN · FARO COMÚN",
    ss-score: "A: +17   |   B: +17",
    ss-world: "Total Mundial = 34  ·  Riesgo = 1×",
    ss-desc: "Ambos aprovechan avances abiertos (+8) y auditan fallos juntos. (Óptimo de Pareto)",
    sw-tag: "A COMPARTE SOLO · B ALZA MURO",
    sw-score: "A: +3   |   B: +20",
    sw-world: "Total Mundial = 23  ·  Riesgo = 2×",
    sw-desc: "B lee el trabajo abierto de A (+8) y toma ventaja (+5); A queda atrás (-5).",
    ws-tag: "A ALZA MURO · B COMPARTE SOLO",
    ws-score: "A: +20   |   B: +3",
    ws-world: "Total Mundial = 23  ·  Riesgo = 2×",
    ws-desc: "A lee el trabajo abierto de B (+8) y toma ventaja (+5); B queda atrás (-5).",
    ww-tag: "AMBOS ALZAN MURO · TRAMPA MUTUA",
    ww-score: "A: +5   |   B: +5",
    ww-world: "Total Mundial = 10 (-70%)  ·  Riesgo = 4×",
    ww-desc: "La ventaja se anula (5 = 5), se duplican fábricas (-1) y crecen los fallos. (Nash)",
    curve-title: "Por qué el secreto multiplica el peligro (Ley de Muchos Ojos)",
    curve-sub: "Probabilidad de que sobreviva un fallo oculto: P = p₀(1 - q)ⁿ",
    axis-x: "Equipos independientes auditando en abierto (n)",
    axis-y: "Riesgo de fallo oculto",
    wall-pt: "Silos cerrados (riesgo 4×)",
    open-pt: "Compartir abierto (riesgo 1×)",
    guide-title: "Cómo se calcula cada casilla (aritmética sencilla)",
    g1: "+10  Base propia de I+D que genera cada país por sí mismo",
    g2: "+8   Bono de conocimiento compartido si el otro país comparte (S)",
    g3: "-1   Costo de duplicar fábricas y cadenas tras un muro (W)",
    g4: "+5 / -5  Ventaja unilateral temporal (se anula a 0 si ambos alzan muros)",
    g5: "Prueba de la moneda: 1 lab cerrado falla 50% · 4 abiertos 6.2% · 10 abiertos < 0.1%",
  ),
  de: (
    kicker: "SPIELTHEORIE EINFACH ERKLÄRT · DIE FESTUNGSFALLE",
    title: "Zwei Länder, zwei Wege: Warum hohe Mauern allen schaden",
    sub: "Jedes Feld zeigt den Nettonutzen für Land A und Land B bei gleichzeitiger Entscheidung.",
    country-b: "Land B →",
    country-a: "↓ Land A",
    share: "Offen teilen (S)",
    wall: "Mauer bauen (W)",
    ss-tag: "BEIDE TEILEN · GEMEINSAMER LEUCHTTURM",
    ss-score: "A: +17   |   B: +17",
    ss-world: "Weltsumme = 34  ·  Fehlerrisiko = 1×",
    ss-desc: "Beide nutzen offene Forschung (+8) und prüfen Fehler gemeinsam. (Pareto-Optimum)",
    sw-tag: "A TEILT ALLEIN · B BAUT MAUER",
    sw-score: "A: +3   |   B: +20",
    sw-world: "Weltsumme = 23  ·  Fehlerrisiko = 2×",
    sw-desc: "B nutzt A's offene Arbeit (+8) und gewinnt Vorsprung (+5); A fällt zurück (-5).",
    ws-tag: "A BAUT MAUER · B TEILT ALLEIN",
    ws-score: "A: +20   |   B: +3",
    ws-world: "Weltsumme = 23  ·  Fehlerrisiko = 2×",
    ws-desc: "A nutzt B's offene Arbeit (+8) und gewinnt Vorsprung (+5); B fällt zurück (-5).",
    ww-tag: "BEIDE BAUEN MAUERN · FESTUNGSFALLE",
    ww-score: "A: +5   |   B: +5",
    ww-world: "Weltsumme = 10 (-70%)  ·  Fehlerrisiko = 4×",
    ww-desc: "Vorsprung hebt sich auf (5 = 5), Fabriken doppelt (-1), Risiken ×4. (Nash-Falle)",
    curve-title: "Warum Geheimhaltung Gefahren vervierfacht (Viele-Augen-Gesetz)",
    curve-sub: "Wahrscheinlichkeit unentdeckter kritischer Fehler: P = p₀(1 - q)ⁿ",
    axis-x: "Unabhängig prüfende offene Teams (n)",
    axis-y: "Unentdecktes Risiko",
    wall-pt: "Geschlossene Silos (4×)",
    open-pt: "Offenes Teilen (1×)",
    guide-title: "So entsteht jede Punktzahl (einfache Rechnung)",
    g1: "+10  Eigene Forschungsbasis jedes Landes aus eigener Kraft",
    g2: "+8   Wissensbonus, wenn das andere Land offen teilt (S)",
    g3: "-1   Kosten doppelter Chipfabriken hinter einer Mauer (W)",
    g4: "+5 / -5  Einseitiger Vorsprung (hebt sich bei zwei Mauern auf 0 auf)",
    g5: "Münzwurf-Prinzip: 1 Geheimlabor übersieht 50% · 4 offene 6,2% · 10 offene < 0,1%",
  ),
)

#let axis-pill(label, bg, border, fg) = block(
  width: 100%,
  height: 100%,
  fill: bg,
  stroke: 1.1pt + border,
  radius: 5pt,
  inset: (x: 6pt, y: 4pt),
  align(center + horizon, text(size: 8.2pt, weight: "bold", fill: fg, label)),
)

#let payoff-cell(score, tag, world, desc, bg, border, accent) = block(
  width: 100%,
  height: 100%,
  fill: bg,
  stroke: 1.3pt + border,
  radius: 6pt,
  inset: (x: 9pt, y: 7pt),
)[
  #set par(leading: 0.38em, spacing: 0.38em, first-line-indent: 0em)
  #align(horizon, stack(
    dir: ttb,
    spacing: 4.2pt,
    text(size: 7pt, weight: "bold", fill: accent, tracking: 0.03em, tag),
    text(size: 13.8pt, weight: "bold", fill: pal.ink, score),
    text(size: 7.6pt, weight: "bold", fill: accent, world),
    text(size: 7.4pt, fill: pal.muted, desc),
  ))
]

#let game-theory-matrix(lang: "en") = {
  let t = pick(game-labels, lang)
  set text(font: script-fonts(lang), fill: pal.ink)
  set par(leading: 0.4em, spacing: 0.4em, first-line-indent: 0em)
  block(
    width: 168mm,
    fill: pal.paper,
    stroke: 0.8pt + pal.rule,
    radius: 8pt,
    inset: 11pt,
  )[
    #stack(
      dir: ttb,
      spacing: 3.5pt,
      text(size: 7.4pt, weight: "bold", fill: pal.teal, tracking: 0.08em, t.kicker),
      text(size: 11.6pt, weight: "bold", fill: pal.ink, t.title),
      text(size: 7.7pt, fill: pal.muted, t.sub),
    )
    #v(7pt)
    // Tier 1: Perfectly Symmetric 2x2 Choice Matrix
    #grid(
      columns: (34mm, 1fr, 1fr),
      rows: (13mm, 33mm, 33mm),
      column-gutter: 6pt,
      row-gutter: 6pt,
      block(
        width: 100%,
        height: 100%,
        fill: pal.card,
        stroke: 0.8pt + pal.rule,
        radius: 5pt,
        inset: (x: 6pt, y: 3.5pt),
      )[
        #place(top + left, line(start: (0%, 0%), end: (100%, 100%), stroke: 0.5pt + pal.rule))
        #align(right + top, text(size: 7.2pt, weight: "bold", fill: pal.ink, t.country-b))
        #v(1fr)
        #align(left + bottom, text(size: 7.2pt, weight: "bold", fill: pal.ink, t.country-a))
      ],
      axis-pill(t.share, pal.teal-soft, pal.teal, pal.teal),
      axis-pill(t.wall, pal.red-soft, pal.red, pal.red),
      axis-pill(t.share, pal.teal-soft, pal.teal, pal.teal),
      payoff-cell(t.ss-score, t.ss-tag, t.ss-world, t.ss-desc, pal.teal-soft, pal.teal, pal.teal),
      payoff-cell(t.sw-score, t.sw-tag, t.sw-world, t.sw-desc, pal.gold-soft, pal.gold, pal.gold),
      axis-pill(t.wall, pal.red-soft, pal.red, pal.red),
      payoff-cell(t.ws-score, t.ws-tag, t.ws-world, t.ws-desc, pal.gold-soft, pal.gold, pal.gold),
      payoff-cell(t.ww-score, t.ww-tag, t.ww-world, t.ww-desc, pal.red-soft, pal.red, pal.red),
    )
    #v(7pt)
    // Tier 2: Symmetric 2-Column Bottom Strip (Many-Eyes Curve + Plain Scoreboard)
    #grid(
      columns: (1fr, 1fr),
      rows: (44mm,),
      column-gutter: 7pt,
      block(
        width: 100%,
        height: 100%,
        fill: pal.card,
        stroke: 0.8pt + pal.rule,
        radius: 6pt,
        inset: 8.5pt,
      )[
        #stack(
          dir: ttb,
          spacing: 2.5pt,
          text(size: 8.1pt, weight: "bold", fill: pal.ink, t.curve-title),
          text(size: 7.1pt, fill: pal.muted, t.curve-sub),
        )
        #v(3pt)
        #align(center + horizon, cetz.canvas(length: 5.8mm, {
          import cetz.draw: *
          line((0, 0), (8.4, 0), stroke: 0.85pt + pal.ink, mark: (end: ">"))
          line((0, 0), (0, 3.6), stroke: 0.85pt + pal.ink, mark: (end: ">"))
          for y in (1, 2, 3) {
            line((0, y), (8.1, y), stroke: (paint: pal.rule, thickness: 0.45pt, dash: "dashed"))
          }
          let pts = range(0, 79).map(i => {
            let x = i * 0.1
            (x, 3.3 * calc.exp(-0.35 * x))
          })
          line(..pts, stroke: 1.9pt + pal.teal)
          let wx = 0.8
          let wy = 3.3 * calc.exp(-0.35 * wx)
          circle((wx, wy), radius: 0.17, fill: pal.red, stroke: 0.9pt + white)
          content((wx + 0.25, wy + 0.22), anchor: "west", text(size: 6.9pt, weight: "bold", fill: pal.red, t.wall-pt))
          let ox = 6.3
          let oy = 3.3 * calc.exp(-0.35 * ox)
          circle((ox, oy), radius: 0.17, fill: pal.teal, stroke: 0.9pt + white)
          content((ox - 0.1, oy + 0.58), anchor: "center", text(size: 6.9pt, weight: "bold", fill: pal.teal, t.open-pt))
          content((4.2, -0.55), text(size: 6.8pt, fill: pal.muted, t.axis-x))
          content((0.15, 3.78), anchor: "west", text(size: 6.8pt, fill: pal.muted, t.axis-y))
        }))
      ],
      block(
        width: 100%,
        height: 100%,
        fill: pal.card,
        stroke: 0.8pt + pal.rule,
        radius: 6pt,
        inset: 8.5pt,
      )[
        #stack(
          dir: ttb,
          spacing: 5pt,
          text(size: 8.1pt, weight: "bold", fill: pal.ink, t.guide-title),
          text(size: 7.3pt, fill: pal.ink, t.g1),
          text(size: 7.3pt, fill: pal.teal, weight: "bold", t.g2),
          text(size: 7.3pt, fill: pal.red, t.g3),
          text(size: 7.3pt, fill: pal.gold, weight: "bold", t.g4),
          line(length: 100%, stroke: 0.5pt + pal.rule),
          text(size: 7.1pt, fill: pal.muted, t.g5),
        )
      ],
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
