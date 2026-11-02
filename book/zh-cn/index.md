# 新的技术边界

用清楚的语言和图解，理解中国第48号公告、美国AI出口管制，以及中国开放模型的未来。
```{typst-diagram}
:alt: 人工智能 23 / 生物医药 5 / 光伏 12 / CN48
:caption: 人工智能 23 / 生物医药 5 / 光伏 12 / CN48

#set text(font: ("Noto Sans CJK SC", "DejaVu Sans"), size: 15pt, fill: rgb("#172e38"))
#set par(justify: false)
#let row(label, n, col) = grid(columns: (140pt, 300pt, 40pt), gutter: 14pt, align: horizon, text(weight: "bold", label), rect(width: n / 40 * 300pt, height: 28pt, fill: col, stroke: none), text(size: 25pt, weight: "bold", str(n)))
#stack(dir: ttb, spacing: 18pt,
row("人工智能", 23, rgb("#b44232")),
row("生物医药", 5, rgb("#08716d")),
row("光伏", 12, rgb("#d29b2b"))
)
```


**研究版本：2026年11月2日。** 我们区分已经实施的登记要求、仍在征求意见的目录修改，以及我们自己的分析。本书用于公众理解，不是对具体交易的批准。

## 两个国家，不同的关口

**中国：登记已经开始，目录修改仍是草案。** 10月16日的公告涉及40项技术：人工智能23项、生物医药5项、光伏12项。其中拟禁止出口14项、拟限制出口26项。有关出口前临时登记自公告发布之日起实施，尚未完成的出口也在范围内。征求意见截至2026年11月15日。[CN48](https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html) [CNQA](https://www.mofcom.gov.cn/zwgk/zcjd/art/2026/art_b11d5c1e9374421e93e85dc87eba6e38.html)

**美国：芯片管制正在实施，模型规则须区分文本和执行。** 先进AI芯片受到许可、目的地、用户和用途检查。自2026年1月15日起，符合条件的H200等芯片从美国出口至中国或澳门可逐案审查。这不等于自动获批。AI扩散规则仍在现行公布文本中；BIS宣布不予执行，GAO于2026年5月对该政策的程序提出法律意见。[US26](https://www.govinfo.gov/content/pkg/FR-2026-01-15/html/2026-00789.htm) [EAR742](https://www.bis.gov/regulations/ear/742) [USNE](https://www.bis.gov/press-release/department-commerce-announces-rescission-biden-era-artificial-intelligence-diffusion-rule-strengthens) [GAO26](https://www.gao.gov/products/b-337935) [EAR774](https://www.bis.gov/regulations/ear/774)

## 本书的核心发现

公告没有全面禁止中国开放模型。草案将已通过开源、论文等方式进入公共领域的AI技术排除在管理范围之外。对限制类AI技术的开源出口，草案提出自动许可等便利措施。已经公开的技术与首次公开的技术不能混为一谈。其他法律仍可能适用。[CN48](https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html) [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps) [CNQA](https://www.mofcom.gov.cn/zwgk/zcjd/art/2026/art_b11d5c1e9374421e93e85dc87eba6e38.html)

本书提供十章内容、40项技术索引、交互式情景说明和七种语言的PDF。官方附件原本是WPS文件；本书另提供本地转换的PDF阅读副本。原文件china_export_control.pdf是一份类器官研发演示稿，与本公告无关，因此不作为证据。
## 官方文件

- **48 / 1** [原始WPS](https://insanai.github.io/chinaexportcontrol/sources/announcement-48-attachment-1.wps) | [转换PDF](https://insanai.github.io/chinaexportcontrol/sources/announcement-48-attachment-1.pdf)
- **48 / 2** [原始WPS](https://insanai.github.io/chinaexportcontrol/sources/announcement-48-attachment-2.wps) | [转换PDF](https://insanai.github.io/chinaexportcontrol/sources/announcement-48-attachment-2.pdf)

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

