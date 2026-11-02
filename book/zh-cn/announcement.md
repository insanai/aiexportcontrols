# 01. 发生了什么，何时生效

## 一份公告，两条时间线
```{typst-diagram}
:alt: 2026年10月16日 / 登记开始 / 2026年11月15日 / 征求意见结束 / 日期未定 / 正式目录实施 / CN48
:caption: 2026年10月16日 / 登记开始 / 2026年11月15日 / 征求意见结束 / 日期未定 / 正式目录实施 / CN48

#set text(font: ("Noto Sans CJK SC", "DejaVu Sans"), size: 15pt, fill: rgb("#172e38"))
#set par(justify: false)
#let tile(date, label, col) = block(width: 172pt, height: 110pt, inset: 14pt, fill: col.lighten(93%), stroke: (top: 3pt + col))[#text(size: 11pt, weight: "bold", fill: col, date) #v(12pt) #text(size: 18pt, weight: "bold", label)]
#grid(columns: (172pt,172pt,172pt), gutter: 12pt,
tile("2026年10月16日","登记开始",rgb("#b44232")),
tile("2026年11月15日","征求意见结束",rgb("#08716d")),
tile("日期未定","正式目录实施",rgb("#52606a"))
)
```


商务部和科技部于2026年10月16日发布第48号公告。一部分就《中国禁止出口限制出口技术目录》的修改征求意见；另一部分立即对有关技术实施出口前临时登记。登记开始，不意味着草案中新增的禁止和限制措施已经全部成为正式规则。[CN48，第一、三部分](https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html)

征求意见期为10月16日至11月15日。临时登记持续到修订后的目录正式发布并实施。公告没有为这个结束时间指定固定日期。在本版检查的来源中，我们未发现替代本次草案的正式目录；后续公告可能改变本书结论。[CN48](https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html)

## 什么情形需要关注

登记情形包括向境外转让技术所有权、授权境外使用境内技术，以及境内技术的所有权人或实际控制人变为境外主体。商务部还可以通知其他情形。已经开始但尚未完成的出口也在登记范围内。因此，即使没有实体货物出境，所有权或控制权变化也可能有意义。这是我们对公告条文的理解。[CN48，第三部分](https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html)

登记通过商务部业务系统统一平台的技术贸易管理信息应用办理。信息包括出口经营者、接收方、国家或地区、技术、用途及预计金额。一次向同一接收方出口多项技术可以合并填写，其他情形原则上分开。登记本身不是出口许可证，也不能代替其他要求。[CN48](https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html) [CN-A2](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF4oOaKur9cYit5N9l30q2pxnD9w8S5MusPjNUieSjO0VwaDludW255rrDjfQ0NgsdGaoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=2.%E6%8A%80%E6%9C%AF%E5%87%BA%E5%8F%A3%E4%BF%A1%E6%81%AF%E7%99%BB%E8%AE%B0%E8%A1%A8.wps)

## 四个词的区别

禁止意味着在明确范围内不能出口。限制意味着需要许可路径。自动许可仍然是一种程序。排除则意味着特定情形不属于该条管理范围。我们应先读限定条件，再理解类别名称。[CN-A1，注1至注4](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

假设一家企业计划11月向海外伙伴许可尚未公开的模型技术。我们首先识别技术和条目，然后检查当前登记及现有法律，不能简单等待征求意见结束。同样，也不能仅凭草案中的禁止类别，就说第48号公告已全面禁止这项交易。这只是说明两条时间线的例子。[CN48](https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html)
