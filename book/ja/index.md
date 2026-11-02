# 技術の新しい国境

中国の公告第48号、米国のAI輸出管理、そして中国の公開モデルの将来を図と平易な言葉で読む本。
```{typst-diagram}
:alt: 人工知能 23 / バイオ医薬 5 / 太陽光 12 / CN48
:caption: 人工知能 23 / バイオ医薬 5 / 太陽光 12 / CN48

#set text(font: ("Noto Sans CJK JP", "DejaVu Sans"), size: 15pt, fill: rgb("#172e38"))
#set par(justify: false)
#let row(label, n, col) = grid(columns: (140pt, 300pt, 40pt), gutter: 14pt, align: horizon, text(weight: "bold", label), rect(width: n / 40 * 300pt, height: 28pt, fill: col, stroke: none), text(size: 25pt, weight: "bold", str(n)))
#stack(dir: ttb, spacing: 18pt,
row("人工知能", 23, rgb("#b44232")),
row("バイオ医薬", 5, rgb("#08716d")),
row("太陽光", 12, rgb("#d29b2b"))
)
```


**調査版：2026年11月2日。** 実施中の義務、提案段階の措置、私たちの分析を分けて説明します。個別取引の許可を判断する本ではありません。

## 二つの国、異なる関門

**中国：登録は開始、目録改定は意見募集。** 10月16日の公告はAI23項目、バイオ医薬5項目、太陽光12項目の計40技術を対象にします。輸出禁止14項目、制限26項目を提案しています。対象輸出の事前登録は同日開始で、開始済みでも未完了の輸出を含みます。意見募集は2026年11月15日までです。[CN48](https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html) [CNQA](https://www.mofcom.gov.cn/zwgk/zcjd/art/2026/art_b11d5c1e9374421e93e85dc87eba6e38.html)

**米国：半導体管理は実施中、モデル規則は条文と運用の区別が必要。** 高性能AI半導体には許可、仕向地、購入者、用途の確認が必要です。2026年1月15日以降、条件を満たすH200などの米国から中国・マカオへの輸出は個別審査が可能です。自動承認ではありません。AI拡散規則は公表条文に残る一方、BISは不執行を表明しました。GAOは2026年5月にその手続きを問題としました。[US26](https://www.govinfo.gov/content/pkg/FR-2026-01-15/html/2026-00789.htm) [EAR742](https://www.bis.gov/regulations/ear/742) [USNE](https://www.bis.gov/press-release/department-commerce-announces-rescission-biden-era-artificial-intelligence-diffusion-rule-strengthens) [GAO26](https://www.gao.gov/products/b-337935) [EAR774](https://www.bis.gov/regulations/ear/774)

## 本書の重要な結論

公告は中国の公開モデルを一律に禁止していません。案はオープンソースや論文で既に公知となったAI技術を対象外とし、制限技術の新たな公開輸出には自動許可などの便宜を示します。対象外と許可手続きは別です。他の法律まで消えるわけではありません。[CN48](https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html) [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps) [CNQA](https://www.mofcom.gov.cn/zwgk/zcjd/art/2026/art_b11d5c1e9374421e93e85dc87eba6e38.html)

本書には10章、40項目の索引、対話型の事例と7言語のPDFがあります。公式添付はWPS形式で、PDFは現地変換した閲覧用です。元からあるchina_export_control.pdfはオルガノイド研究の別の資料で、根拠に使いません。
## 公式資料

- **48 / 1** [原本WPS](https://insanai.github.io/chinaexportcontrol/sources/announcement-48-attachment-1.wps) | [変換PDF](https://insanai.github.io/chinaexportcontrol/sources/announcement-48-attachment-1.pdf)
- **48 / 2** [原本WPS](https://insanai.github.io/chinaexportcontrol/sources/announcement-48-attachment-2.wps) | [変換PDF](https://insanai.github.io/chinaexportcontrol/sources/announcement-48-attachment-2.pdf)

[48 / HTML / PDF](https://insanai.github.io/chinaexportcontrol/sources/announcement-48-official-page.pdf)

```{toctree}
:maxdepth: 1
:hidden:

announcement
atlas
ai
open-models
biomedicine
solar
united-states
comparison
questions
sources
```

