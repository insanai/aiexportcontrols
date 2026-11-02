# 기술의 새로운 국경

중국 공고 제48호, 미국의 AI 수출 통제, 중국 공개 모델의 미래를 그림과 쉬운 말로 설명하는 책입니다.
```{typst-diagram}
:alt: 인공지능 23 / 바이오의약 5 / 태양광 12 / CN48
:caption: 인공지능 23 / 바이오의약 5 / 태양광 12 / CN48

#set text(font: ("Noto Sans CJK KR", "DejaVu Sans"), size: 15pt, fill: rgb("#172e38"))
#set par(justify: false)
#let row(label, n, col) = grid(columns: (140pt, 300pt, 40pt), gutter: 14pt, align: horizon, text(weight: "bold", label), rect(width: n / 40 * 300pt, height: 28pt, fill: col, stroke: none), text(size: 25pt, weight: "bold", str(n)))
#stack(dir: ttb, spacing: 18pt,
row("인공지능", 23, rgb("#b44232")),
row("바이오의약", 5, rgb("#08716d")),
row("태양광", 12, rgb("#d29b2b"))
)
```


**조사판: 2026년 11월 2일.** 현재 시행되는 의무, 제안된 조치, 우리의 분석을 구분합니다. 개별 거래를 승인하는 자료는 아닙니다.

## 두 나라, 서로 다른 관문

**중국: 등록은 시행 중, 목록 개정은 의견 수렴 중.** 10월 16일 공고는 AI 23개, 바이오의약 5개, 태양광 12개 등 40개 기술을 다룹니다. 수출 금지 14개와 제한 26개를 제안합니다. 대상 수출의 사전 등록은 당일 시작됐고 아직 끝나지 않은 수출도 포함합니다. 의견 수렴은 2026년 11월 15일까지입니다. [CN48](https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html) [CNQA](https://www.mofcom.gov.cn/zwgk/zcjd/art/2026/art_b11d5c1e9374421e93e85dc87eba6e38.html)

**미국: 칩 통제는 시행 중이며 모델 규정은 문구와 집행을 함께 봐야 합니다.** 첨단 AI 칩은 허가, 목적지, 구매자, 용도 확인이 필요합니다. 2026년 1월 15일부터 조건을 충족한 H200 등 칩의 미국발 중국·마카오 수출은 개별 심사가 가능합니다. 자동 승인은 아닙니다. AI 확산 규정은 공표된 규정에 남아 있으나 BIS는 집행하지 않겠다고 발표했습니다. GAO는 2026년 5월 그 정책의 절차를 문제 삼았습니다. [US26](https://www.govinfo.gov/content/pkg/FR-2026-01-15/html/2026-00789.htm) [EAR742](https://www.bis.gov/regulations/ear/742) [USNE](https://www.bis.gov/press-release/department-commerce-announces-rescission-biden-era-artificial-intelligence-diffusion-rule-strengthens) [GAO26](https://www.gao.gov/products/b-337935) [EAR774](https://www.bis.gov/regulations/ear/774)

## 핵심 결론

공고는 중국 공개 모델을 전면 금지하지 않습니다. 초안은 오픈소스나 논문으로 이미 공개 영역에 들어간 AI 기술을 제외하며, 제한 기술의 새로운 오픈소스 수출에는 자동 허가 등의 편의를 제안합니다. 제외와 허가 절차는 다릅니다. 다른 법률까지 없어지는 것은 아닙니다. [CN48](https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html) [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps) [CNQA](https://www.mofcom.gov.cn/zwgk/zcjd/art/2026/art_b11d5c1e9374421e93e85dc87eba6e38.html)

이 책은 10개 장, 40개 기술 지도, 대화형 사례와 7개 언어 PDF를 제공합니다. 공식 첨부는 WPS이며 PDF는 현지 변환한 읽기용 사본입니다. 원래 폴더의 china_export_control.pdf는 별개의 오가노이드 연구 발표 자료이므로 근거로 쓰지 않습니다.
## 공식 문서

- **48 / 1** [원본 WPS](https://insanai.github.io/chinaexportcontrol/sources/announcement-48-attachment-1.wps) | [변환 PDF](https://insanai.github.io/chinaexportcontrol/sources/announcement-48-attachment-1.pdf)
- **48 / 2** [원본 WPS](https://insanai.github.io/chinaexportcontrol/sources/announcement-48-attachment-2.wps) | [변환 PDF](https://insanai.github.io/chinaexportcontrol/sources/announcement-48-attachment-2.pdf)

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

