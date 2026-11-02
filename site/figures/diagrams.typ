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

#let game-copy = (
  en: ("INVENTED PREFERENCES / HIGHER MEANS PREFERRED", "How both sides can lose", "Share", "Wall", "A chooses the row", "B chooses the column", "A: 17   B: 17", "A: 3    B: 20", "A: 20   B: 3", "A: 5    B: 5", "Both prefer sharing to mutual walls.", "A wall is each side's best reply only under these assumptions.", "These scores describe the story's priorities, not measured effects.", "Both share", "Only A shares", "Only B shares", "Both build walls"),
  zh_CN: ("假设偏好 / 分数越高越偏好", "双方如何一起受损", "共享", "筑墙", "A选择行", "B选择列", "A: 17   B: 17", "A: 3    B: 20", "A: 20   B: 3", "A: 5    B: 5", "双方都更愿意共享，而非共同筑墙。", "只有在这些假设下，筑墙才是各自的最优回应。", "分数说明故事中的偏好，不是实测影响。", "双方共享", "只有A共享", "只有B共享", "双方筑墙"),
  ja: ("仮定の選好 / 高いほど好ましい", "双方が損をする仕組み", "共有", "壁", "Aが行を選ぶ", "Bが列を選ぶ", "A: 17   B: 17", "A: 3    B: 20", "A: 20   B: 3", "A: 5    B: 5", "双方は相互の壁より共有を好む。", "この仮定の下でのみ、壁が双方の最適な応答となる。", "点数は物語の選好であり、実測の影響ではありません。", "双方が共有", "Aだけ共有", "Bだけ共有", "双方が壁を築く"),
  ko: ("가정한 선호 / 높을수록 선호", "양쪽이 함께 잃는 구조", "공유", "장벽", "A가 행 선택", "B가 열 선택", "A: 17   B: 17", "A: 3    B: 20", "A: 20   B: 3", "A: 5    B: 5", "양쪽 모두 상호 장벽보다 공유를 선호합니다.", "이 가정 아래에서만 장벽이 각자의 최적 대응입니다.", "점수는 이야기의 선호이며 실측 효과가 아닙니다.", "양쪽 공유", "A만 공유", "B만 공유", "양쪽 장벽"),
  hi: ("मानी हुई प्राथमिकताएं / अधिक अंक यानी अधिक पसंद", "दोनों पक्ष कैसे नुकसान उठा सकते हैं", "साझा", "दीवार", "A पंक्ति चुनता है", "B स्तंभ चुनता है", "A: 17   B: 17", "A: 3    B: 20", "A: 20   B: 3", "A: 5    B: 5", "दोनों को आपसी दीवार से साझा करना बेहतर लगता है।", "केवल इन मान्यताओं में दीवार हर पक्ष का बेहतर जवाब है।", "ये अंक कहानी की प्राथमिकताएं हैं, मापे हुए प्रभाव नहीं।", "दोनों साझा", "केवल A साझा", "केवल B साझा", "दोनों दीवार"),
  es: ("PREFERENCIAS SUPUESTAS / MÁS ALTO SIGNIFICA PREFERIDO", "Cómo pueden perder ambos", "Compartir", "Muro", "A elige la fila", "B elige la columna", "A: 17   B: 17", "A: 3    B: 20", "A: 20   B: 3", "A: 5    B: 5", "Ambos prefieren compartir a los muros mutuos.", "El muro es la mejor respuesta solo bajo estos supuestos.", "Los puntos expresan las prioridades del relato, no efectos medidos.", "Ambos comparten", "Solo A comparte", "Solo B comparte", "Ambos ponen muros"),
  de: ("ANGENOMMENE PRÄFERENZEN / HÖHER BEDEUTET BEVORZUGT", "Wie beide Seiten verlieren können", "Teilen", "Mauer", "A wählt die Zeile", "B wählt die Spalte", "A: 17   B: 17", "A: 3    B: 20", "A: 20   B: 3", "A: 5    B: 5", "Beide ziehen Teilen den gegenseitigen Mauern vor.", "Nur unter diesen Annahmen ist eine Mauer die beste Antwort.", "Die Punkte zeigen die Prioritäten der Geschichte, keine gemessenen Folgen.", "Beide teilen", "Nur A teilt", "Nur B teilt", "Beide bauen Mauern"),
)
#let game-theory-matrix(lang: "en") = {
  let t = pick(game-copy, lang)
  set text(font: script-fonts(lang), fill: pal.ink)
  block(width: 168mm, fill: white, inset: 13pt)[
    #text(size: 7.8pt, fill: pal.muted, weight: "bold", tracking: 0.05em, t.at(0))
    #v(5pt)
    #text(size: 22pt, weight: "bold", t.at(1))
    #v(10pt)
    #cetz.canvas(length: 10mm, {
      import cetz.draw: *
      rect((0, 0), (15.1, 10.3), fill: white, stroke: none)
      content((9.05, 9.9), text(size: 9pt, fill: pal.muted, t.at(5)))
      content((6.05, 9.1), block(width: 47mm, align(center, text(size: 12pt, weight: "bold", fill: pal.teal, t.at(2)))))
      content((11.75, 9.1), block(width: 47mm, align(center, text(size: 12pt, weight: "bold", fill: pal.red, t.at(3)))))
      content((1.55, 8.0), block(width: 29mm, align(center, text(size: 8pt, fill: pal.muted, t.at(4)))))
      content((1.55, 6.4), block(width: 29mm, align(center, text(size: 11pt, weight: "bold", fill: pal.teal, t.at(2)))))
      content((1.55, 2.7), block(width: 29mm, align(center, text(size: 11pt, weight: "bold", fill: pal.red, t.at(3)))))
      for (x, y, a, b, bg, accent, label) in (
        (3.4, 4.8, 17, 17, rgb("#eaf5f1"), pal.teal, t.at(13)),
        (9.1, 4.8, 3, 20, rgb("#f6f2e9"), pal.ink, t.at(14)),
        (3.4, 1.1, 20, 3, rgb("#f6f2e9"), pal.ink, t.at(15)),
        (9.1, 1.1, 5, 5, rgb("#faece6"), pal.red, t.at(16)),
      ) {
        rect((x, y), (x + 5.3, y + 3.15), fill: bg, stroke: 0.6pt + pal.rule)
        line((x, y + 3.15), (x + 5.3, y + 3.15), stroke: 2.1pt + accent)
        line((x + 2.65, y + 0.7), (x + 2.65, y + 2.6), stroke: 0.6pt + pal.rule)
        content((x + 1.35, y + 2.45), text(size: 8.5pt, weight: "bold", fill: pal.muted, "A"))
        content((x + 3.95, y + 2.45), text(size: 8.5pt, weight: "bold", fill: pal.muted, "B"))
        content((x + 1.35, y + 1.25), text(size: 31pt, weight: "bold", fill: accent, str(a)))
        content((x + 3.95, y + 1.25), text(size: 31pt, weight: "bold", fill: accent, str(b)))
        content((x + 2.65, y + 0.28), block(width: 48mm, align(center, text(size: 8pt, fill: pal.muted, label))))
      }
    })
    #text(size: 9.5pt, fill: pal.teal, weight: "bold", t.at(10))
    #v(6pt)
    #text(size: 9pt, t.at(11))
    #v(10pt)
    #line(length: 100%, stroke: 0.5pt + pal.rule)
    #v(5pt)
    #text(size: 8pt, fill: pal.muted, t.at(12))
  ]
}

#let clocks-labels = (
  en: (
    kicker: "ANNOUNCEMENT NO. 48 · TWO SEPARATE CLOCKS",
    title: "What Started on 16 October 2026 vs. What Remains a Proposal",
    origin: "16 Oct 2026\nMOFCOM & MOST\nAnnouncement 48",
    c1: "CLOCK 1 · CONSULTATION\n16 Oct - 15 Nov 2026\n40 Catalogue Points",
    c1-out: "Final Revised Catalogue\n(Future unfixed date:\nJ bans & X licenses begin)",
    c2: "CLOCK 2 · LIVE TODAY\necomp.mofcom.gov.cn\nAttachment 2 Registration",
    c2-out: "4 Triggers Covered Now:\n1. IP sale abroad  2. Foreign license\n3. Foreign control shift  4. Notices",
  ),
  zh_CN: (
    kicker: "2026年第48号公告 · 两套并行时钟",
    title: "2026年10月16日已生效的登记义务 vs. 仍在征求意见的目录草案",
    origin: "2026年10月16日\n商务部 · 科技部\n第48号公告发布",
    c1: "时钟一 · 公开征求意见\n10月16日 - 11月15日\n40项拟新增管制技术",
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
    c1: "시계 1 · 의견 수렴 초안\n10월 16일 - 11월 15일\n40개 기술 추가 제안",
    c1-out: "개정 목록 정식 공포\n(시행일 미정:\n금지 J · 제한 X 허가 발효)",
    c2: "시계 2 · 현재 즉시 시행 중\necomp.mofcom.gov.cn\n부속서 2 수출 전 정보 등록",
    c2-out: "완료 전 등록 필수 4대 거래:\n1. 권리 이전  2. 해외 라이선스\n3. 외국 지배권 변경  4. 추가 고시",
  ),
  hi: (
    kicker: "घोषणा सं. 48 · दो अलग-अलग घड़ियाँ",
    title: "16 अक्टूबर 2026 से तुरंत लागू पंजीकरण बनाम प्रस्तावित सूची संशोधन",
    origin: "16 अक्टूबर 2026\nMOFCOM और MOST\nघोषणा सं. 48",
    c1: "घड़ी 1 · जन-परामर्श\n16 अक्टू - 15 नवम्बर 2026\n40 प्रस्तावित तकनीक बिंदु",
    c1-out: "अंतिम संशोधित सूची\n(भविष्य की तिथि:\nJ रोक व X लाइसेंस लागू)",
    c2: "घड़ी 2 · आज से सक्रिय\necomp.mofcom.gov.cn\nसंलग्नक 2 पूर्व-पंजीकरण",
    c2-out: "4 लेन-देन अभी शामिल:\n1. IP बिक्री  2. विदेशी लाइसेंस\n3. विदेशी नियंत्रण बदलाव  4. सूचनाएँ",
  ),
  es: (
    kicker: "ANUNCIO N.º 48 · DOS RELOJES DISTINTOS",
    title: "Qué empezó el 16 de octubre de 2026 frente a qué sigue en consulta",
    origin: "16 oct 2026\nMOFCOM y MOST\nAnuncio N.º 48",
    c1: "RELOJ 1 · CONSULTA PÚBLICA\n16 oct - 15 nov 2026\n40 puntos propuestos",
    c1-out: "Catálogo Final Revisado\n(Fecha futura sin fijar:\ninician muros J y licencias X)",
    c2: "RELOJ 2 · ACTIVO HOY\necomp.mofcom.gov.cn\nRegistro Previo (Anexo 2)",
    c2-out: "4 operaciones cubiertas hoy:\n1. Venta IP  2. Licencia exterior\n3. Control extranjero  4. Avisos",
  ),
  de: (
    kicker: "BEKANNTMACHUNG NR. 48 · ZWEI VERSCHIEDENE UHREN",
    title: "Was am 16. Oktober 2026 sofort begann vs. was noch Entwurf ist",
    origin: "16. Okt. 2026\nMOFCOM & MOST\nBekanntmachung 48",
    c1: "UHR 1 · KONSULTATION\n16. Okt. - 15. Nov. 2026\n40 vorgeschlagene Punkte",
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
