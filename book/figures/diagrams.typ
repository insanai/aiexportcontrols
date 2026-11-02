// Shared native Typst + CeTZ + Fletcher diagrams for:
// "Impact of Export Controls on the Future of Open Source AI"
// Compiled directly by Guidedog's embedded Typst engine for both HTML (SVG) and PDF (A4).

#import "@preview/cetz:0.3.4"
#import "@preview/fletcher:0.5.8": diagram, node, edge

#let pal = (
  paper: rgb("#ffffff"),
  card: rgb("#ffffff"),
  ink: rgb("#172e38"),
  muted: rgb("#52656f"),
  rule: rgb("#d5cfc2"),
  teal: rgb("#08716d"),
  teal-soft: rgb("#ffffff"),
  red: rgb("#ae3d2c"),
  red-soft: rgb("#ffffff"),
  gold: rgb("#b87d14"),
  gold-soft: rgb("#ffffff"),
  slate-soft: rgb("#ffffff"),
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

// A teaching game. Scores express assumed preferences, not measured welfare or risk.
#let game-copy = (
  en: ("ILLUSTRATIVE GAME / ASSUMED SCORES", "How both sides can lose", "Share (S)", "Wall (W)", "Country A / rows", "Country B / columns", "A: 17   B: 17", "A: 3    B: 20", "A: 20   B: 3", "A: 5    B: 5", "Both prefer sharing to mutual walls.", "A wall is each side's best reply only under these assumptions.", "Teaching values. No measured percentage loss or safety multiplier."),
  zh_CN: ("示意博弈 / 假设得分", "双方如何一起受损", "共享 (S)", "筑墙 (W)", "A国 / 行", "B国 / 列", "A: 17   B: 17", "A: 3    B: 20", "A: 20   B: 3", "A: 5    B: 5", "双方都更愿意共享，而非共同筑墙。", "只有在这些假设下，筑墙才是各自的最优回应。", "教学数值，不是实际损失比例或安全风险倍数。"),
  ja: ("説明用ゲーム / 仮定した点数", "双方が損をする仕組み", "共有 (S)", "壁 (W)", "A国 / 行", "B国 / 列", "A: 17   B: 17", "A: 3    B: 20", "A: 20   B: 3", "A: 5    B: 5", "双方は相互の壁より共有を好む。", "この仮定の下でのみ、壁が双方の最適な応答となる。", "教育用の点数であり、実測の損失率や危険倍率ではない。"),
  ko: ("설명용 게임 / 가정한 점수", "양쪽이 함께 잃는 구조", "공유 (S)", "장벽 (W)", "A국 / 행", "B국 / 열", "A: 17   B: 17", "A: 3    B: 20", "A: 20   B: 3", "A: 5    B: 5", "양쪽 모두 상호 장벽보다 공유를 선호합니다.", "이 가정 아래에서만 장벽이 각자의 최적 대응입니다.", "교육용 수치이며 실측 손실률이나 위험 배수가 아닙니다."),
  hi: ("उदाहरण का खेल / माने हुए अंक", "दोनों पक्ष कैसे नुकसान उठा सकते हैं", "साझा (S)", "दीवार (W)", "देश A / पंक्ति", "देश B / स्तंभ", "A: 17   B: 17", "A: 3    B: 20", "A: 20   B: 3", "A: 5    B: 5", "दोनों को आपसी दीवार से साझा करना बेहतर लगता है।", "केवल इन मान्यताओं में दीवार हर पक्ष का बेहतर जवाब है।", "शिक्षण के अंक, वास्तविक नुकसान प्रतिशत या सुरक्षा गुणक नहीं।"),
  es: ("JUEGO ILUSTRATIVO / PUNTOS SUPUESTOS", "Cómo pueden perder ambos", "Compartir (S)", "Muro (W)", "País A / filas", "País B / columnas", "A: 17   B: 17", "A: 3    B: 20", "A: 20   B: 3", "A: 5    B: 5", "Ambos prefieren compartir a los muros mutuos.", "El muro es la mejor respuesta solo bajo estos supuestos.", "Puntos didácticos, no porcentajes medidos ni multiplicadores de riesgo."),
  de: ("BEISPIELSPIEL / ANGENOMMENE PUNKTE", "Wie beide Seiten verlieren können", "Teilen (S)", "Mauer (W)", "Land A / Zeilen", "Land B / Spalten", "A: 17   B: 17", "A: 3    B: 20", "A: 20   B: 3", "A: 5    B: 5", "Beide ziehen Teilen den gegenseitigen Mauern vor.", "Nur unter diesen Annahmen ist eine Mauer die beste Antwort.", "Lehrwerte, keine gemessenen Verluste oder Risikomultiplikatoren."),
)
#let game-theory-matrix(lang: "en") = {
  let t = pick(game-copy, lang)
  set text(font: script-fonts(lang), fill: pal.ink)
  set par(leading: 0.5em)
  block(width: 168mm, fill: white, inset: 15pt)[
    #text(size: 7.5pt, fill: pal.muted, weight: "bold", t.at(0))
    #v(6pt)
    #text(size: 19pt, weight: "bold", t.at(1))
    #v(10pt)
    #align(right, text(size: 8pt, fill: pal.muted, t.at(5)))
    #v(6pt)
    #grid(columns: (32mm, 1fr, 1fr), gutter: 0pt,
      block(inset: 9pt, text(size: 8pt, fill: pal.muted, t.at(4))),
      block(inset: 9pt, text(size: 10pt, weight: "bold", t.at(2))),
      block(inset: 9pt, text(size: 10pt, weight: "bold", t.at(3))),
      block(height: 24mm, inset: 9pt, stroke: (top: 0.5pt + pal.rule), text(size: 10pt, weight: "bold", t.at(2))),
      block(height: 24mm, inset: 12pt, stroke: (top: 0.8pt + pal.teal, bottom: 0.5pt + pal.rule), text(size: 17pt, fill: pal.teal, weight: "bold", t.at(6))),
      block(height: 24mm, inset: 12pt, stroke: (top: 0.5pt + pal.rule, bottom: 0.5pt + pal.rule), text(size: 17pt, t.at(7))),
      block(height: 24mm, inset: 9pt, text(size: 10pt, weight: "bold", t.at(3))),
      block(height: 24mm, inset: 12pt, text(size: 17pt, t.at(8))),
      block(height: 24mm, inset: 12pt, stroke: (bottom: 1.1pt + pal.red), text(size: 17pt, fill: pal.red, weight: "bold", t.at(9))),
    )
    #v(9pt)
    #text(size: 9pt, fill: pal.teal, t.at(10))
    #v(5pt)
    #text(size: 9pt, t.at(11))
    #v(12pt)
    #line(length: 100%, stroke: 0.5pt + pal.rule)
    #v(6pt)
    #text(size: 8pt, fill: pal.muted, t.at(12))
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
    radius: 0pt,
    inset: 12pt,
  )[
    #text(size: 7.5pt, weight: "bold", fill: pal.teal, tracking: 0.08em, t.kicker)
    #v(2pt)
    #text(size: 11.5pt, weight: "bold", fill: pal.ink, t.title)
    #v(5pt)
    #stack(
      dir: ltr,
      spacing: 12pt,
      stack(dir: ltr, spacing: 4pt, rect(width: 9pt, height: 9pt, fill: pal.red, radius: 0pt), text(size: 8pt, weight: "bold", fill: pal.red, t.prohibited)),
      stack(dir: ltr, spacing: 4pt, rect(width: 9pt, height: 9pt, fill: pal.gold, radius: 0pt), text(size: 8pt, weight: "bold", fill: pal.gold, t.restricted)),
    )
    #v(6pt)
    #block(fill: pal.card, stroke: 0.7pt + pal.rule, radius: 0pt, inset: 9pt, width: 100%)[
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
        radius: 0pt,
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
    radius: 0pt,
    inset: 12pt,
  )[
    #text(size: 7.5pt, weight: "bold", fill: pal.teal, tracking: 0.08em, t.kicker)
    #v(2pt)
    #text(size: 11.5pt, weight: "bold", fill: pal.ink, t.title)
    #v(8pt)
    #align(center, diagram(
      spacing: (14mm, 8mm),
      node-stroke: 1.1pt,
      node-corner-radius: 0pt,
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
  en: (kicker: "THREE LAYERS / DIFFERENT LEGAL QUESTIONS", title: "Open models still need physical computers", l3-tag: "PUBLIC FILES AND REMOTE SERVICES", l3-title: "Different routes, not a universal exemption", l3-body: "Identify the actual artifact. China draft Note 1, the official Q&A and US publication rules have different scopes.", l2-tag: "PRIVATE MODEL TECHNOLOGY", l2-title: "Weights, checkpoints, code and agents", l2-body: "Chinese categories remain proposed; temporary registration is current. US 4E091 text and non-enforcement are distinct.", l1-tag: "HARDWARE AND DESIGN KNOWLEDGE", l1-title: "Chips, memory and large clusters", l1-body: "US chip controls and proposed Chinese design/cluster entries concern different objects and conditions."),
  zh_CN: (kicker: "三层结构 / 不同法律问题", title: "开放模型仍需实体计算机", l3-tag: "公开文件与远程服务", l3-title: "不同路径，不是通用豁免", l3-body: "识别实际文件。中国草案注1、官方问答与美国公开条款范围不同。", l2-tag: "私有模型技术", l2-title: "权重、检查点、代码和智能体", l2-body: "中国类别仍为提案，临时登记已实施。美国4E091文本与不执行政策应分开。", l1-tag: "硬件与设计知识", l1-title: "芯片、存储与大型集群", l1-body: "美国芯片管制与中国拟议设计及集群条目涉及不同对象和条件。"),
  ja: (kicker: "三つの層 / 別々の法律問題", title: "公開モデルにも物理計算機が必要", l3-tag: "公開ファイルと遠隔サービス", l3-title: "異なる経路、一般免除ではない", l3-body: "実際の資料を特定する。中国案の注1、公式回答、米国公表規定は範囲が異なる。", l2-tag: "非公開モデル技術", l2-title: "重み、保存状態、コード、エージェント", l2-body: "中国分類は提案、登録は現行。米国4E091条文と不執行を区別する。", l1-tag: "機器と設計知識", l1-title: "半導体、メモリー、大規模集群", l1-body: "米国半導体管理と中国の設計・集群提案は対象と条件が異なる。"),
  ko: (kicker: "세 계층 / 다른 법적 질문", title: "공개 모델에도 물리 컴퓨터가 필요", l3-tag: "공개 파일과 원격 서비스", l3-title: "다른 경로이며 보편 면제는 아님", l3-body: "실제 파일을 식별합니다. 중국 주석1, 공식 문답, 미국 공개 규정의 범위는 다릅니다.", l2-tag: "비공개 모델 기술", l2-title: "가중치·체크포인트·코드·에이전트", l2-body: "중국 분류는 제안이고 등록은 시행 중입니다. 미국 문구와 불집행은 별개입니다.", l1-tag: "장비와 설계 지식", l1-title: "칩·메모리·대형 클러스터", l1-body: "미국 칩 관리와 중국 설계·클러스터 제안은 대상과 조건이 다릅니다."),
  hi: (kicker: "तीन परत / अलग कानूनी सवाल", title: "खुले मॉडल को भी भौतिक कंप्यूटर चाहिए", l3-tag: "सार्वजनिक फाइल और दूरस्थ सेवा", l3-title: "अलग रास्ते, सामान्य छूट नहीं", l3-body: "असली फाइल पहचानें। चीन का नोट1, सरकारी उत्तर और अमेरिकी प्रकाशन नियम अलग हैं।", l2-tag: "निजी मॉडल तकनीक", l2-title: "भार, चेकपॉइंट, कोड और एजेंट", l2-body: "चीनी श्रेणियां प्रस्ताव हैं; पंजीकरण लागू है। अमेरिकी पाठ और गैर-अमल अलग हैं।", l1-tag: "उपकरण और डिजाइन ज्ञान", l1-title: "चिप, मेमोरी और बड़े समूह", l1-body: "अमेरिकी चिप नियंत्रण और चीनी डिजाइन·समूह प्रस्ताव अलग वस्तु और शर्तें देखते हैं।"),
  es: (kicker: "TRES CAPAS / PREGUNTAS JURÍDICAS DISTINTAS", title: "Los modelos abiertos necesitan ordenadores", l3-tag: "ARCHIVOS PÚBLICOS Y SERVICIOS REMOTOS", l3-title: "Rutas distintas, no una excepción universal", l3-body: "Identificamos el archivo. La Nota 1, la explicación china y las reglas estadounidenses tienen alcances distintos.", l2-tag: "TECNOLOGÍA PRIVADA", l2-title: "Pesos, puntos de control, código y agentes", l2-body: "Las categorías chinas son propuestas; el registro está vigente. El texto 4E091 y su no aplicación son distintos.", l1-tag: "EQUIPOS Y CONOCIMIENTO DE DISEÑO", l1-title: "Chips, memoria y grandes grupos", l1-body: "Los controles estadounidenses y las propuestas chinas cubren objetos y condiciones distintos."),
  de: (kicker: "DREI EBENEN / GETRENNTE RECHTSFRAGEN", title: "Offene Modelle brauchen reale Computer", l3-tag: "ÖFFENTLICHE DATEIEN UND REMOTE-DIENSTE", l3-title: "Verschiedene Wege, keine pauschale Ausnahme", l3-body: "Die konkrete Datei bestimmen. Chinas Hinweis 1, amtliche Antworten und US-Veröffentlichungsregeln unterscheiden sich.", l2-tag: "PRIVATE MODELLTECHNIK", l2-title: "Gewichte, Speicherstände, Code und Agenten", l2-body: "Chinas Kategorien sind Entwurf, Registrierung gilt. US-4E091-Text und Nichtdurchsetzung sind getrennt.", l1-tag: "GERÄTE UND ENTWURFSWISSEN", l1-title: "Chips, Speicher und große Cluster", l1-body: "US-Chipregeln und Chinas Entwurfs-/Clusterpositionen haben verschiedene Gegenstände und Bedingungen."),
)

#let stack-layer(tag, title, body, bg, border, accent) = block(
  width: 100%,
  fill: bg,
  stroke: 1.2pt + border,
  radius: 0pt,
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
    radius: 0pt,
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

// Separate legal questions, rather than a combined China/US clearance algorithm.
#let release-copy = (
  en: ("THREE SEPARATE QUESTIONS", "Current Chinese registration", "Does the covered transfer require registration now?", "Proposed Chinese catalogue", "What artifact, entry, exclusion or facilitated route applies?", "US rules", "Is it subject to the EAR, and what publication notes apply?"),
  zh_CN: ("三个独立问题", "中国当前登记", "覆盖的转移现在是否需要登记？", "中国目录草案", "具体文件、条目、排除或便利路径是什么？", "美国规则", "是否受EAR管辖，适用哪些公开条款？"),
  ja: ("三つの別々の問い", "中国の現行登録", "対象の移転に現在の登録が必要か？", "中国の目録案", "どのファイル、条目、除外、便宜が関係するか？", "米国の規則", "EAR対象か、公表注記はどう適用されるか？"),
  ko: ("세 가지 별도 질문", "중국 현재 등록", "대상 이전에 지금 등록이 필요한가?", "중국 목록 초안", "어떤 파일·항목·제외·편의가 관련되는가?", "미국 규정", "EAR 대상인가, 어떤 공개 주석이 적용되는가?"),
  hi: ("तीन अलग सवाल", "चीन का वर्तमान पंजीकरण", "क्या संबंधित हस्तांतरण के लिए अभी पंजीकरण चाहिए?", "चीन की प्रस्तावित सूची", "कौन सी फाइल, श्रेणी, छूट या सुविधा लागू है?", "अमेरिकी नियम", "क्या EAR लागू है और प्रकाशन के कौन से नोट हैं?"),
  es: ("TRES PREGUNTAS DISTINTAS", "Registro chino vigente", "¿La transferencia cubierta necesita registro ahora?", "Catálogo chino propuesto", "¿Qué archivo, entrada, exclusión o facilidad corresponde?", "Reglas de Estados Unidos", "¿Está sujeto a EAR y qué notas de publicación se aplican?"),
  de: ("DREI GETRENNTE FRAGEN", "Heutige chinesische Registrierung", "Muss die erfasste Übertragung jetzt registriert werden?", "Chinesischer Katalogentwurf", "Welche Datei, Position, Ausnahme oder Erleichterung gilt?", "US-Regeln", "Unterliegt es den EAR, welche Veröffentlichungshinweise gelten?"),
)
#let release-reading-map(lang: "en") = {
  let t = pick(release-copy, lang)
  set text(font: script-fonts(lang), fill: pal.ink)
  block(width: 168mm, fill: white, inset: 15pt)[
    #text(size: 8pt, weight: "bold", fill: pal.muted, t.at(0))
    #v(10pt)
    #for (i, color) in (pal.ink, pal.gold, pal.teal).enumerate() {
      block(width: 100%, inset: (y: 11pt, x: 0pt), stroke: (top: 0.7pt + color))[
        #grid(columns: (10mm, 55mm, 1fr), gutter: 6pt,
          text(size: 18pt, weight: "bold", fill: color, str(i + 1)),
          text(size: 10pt, weight: "bold", t.at(1 + i * 2)),
          text(size: 9pt, t.at(2 + i * 2)))
      ]
    }
  ]
}
