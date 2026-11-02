# 01. 何がいつ変わったか

## 一つの公告、二つの時間軸
```{typst-diagram}
:alt: 2026年10月16日 / 登録開始 / 2026年11月15日 / 意見募集終了 / 日付未定 / 最終目録実施 / CN48
:caption: 2026年10月16日 / 登録開始 / 2026年11月15日 / 意見募集終了 / 日付未定 / 最終目録実施 / CN48

#set text(font: ("Noto Sans CJK JP", "DejaVu Sans"), size: 15pt, fill: rgb("#172e38"))
#set par(justify: false)
#let tile(date, label, col) = block(width: 172pt, height: 110pt, inset: 14pt, fill: col.lighten(93%), stroke: (top: 3pt + col))[#text(size: 11pt, weight: "bold", fill: col, date) #v(12pt) #text(size: 18pt, weight: "bold", label)]
#grid(columns: (172pt,172pt,172pt), gutter: 12pt,
tile("2026年10月16日","登録開始",rgb("#b44232")),
tile("2026年11月15日","意見募集終了",rgb("#08716d")),
tile("日付未定","最終目録実施",rgb("#52606a"))
)
```


商務部と科学技術部は2026年10月16日に公告を発表しました。一方は輸出禁止・制限技術目録の改定案、もう一方は直ちに始まる事前登録です。登録の開始は、追加される禁止・制限がすべて確定して施行されたことを意味しません。[CN48](https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html)

意見募集は10月16日から11月15日。臨時登録は改定目録の正式公布・実施まで続きます。終了の固定日はありません。本版で調べた資料からは、この案に代わる最終目録は確認できませんでした。後の公告で状況は変わり得ます。[CN48](https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html)

## どのような移転か

登録対象には、海外への所有権移転、国内技術の海外利用許諾、国内技術の所有者または実質的支配者が海外主体となる場合が含まれます。商務部が別途指定する場合や未完了輸出も対象です。物品が国境を越えなくても企業取引が関係し得る、というのが支配条項からの私たちの読み方です。[CN48、第三部](https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html)

登録はecomp.mofcom.gov.cnの技術貿易アプリで行い、輸出者、受領者、国・地域、技術、用途、見込額などを記載します。同一受領者への一度の輸出に複数技術があればまとめられ、その他は原則別です。登録は輸出許可そのものではありません。[CN48](https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html) [CN-A2](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF4oOaKur9cYit5N9l30q2pxnD9w8S5MusPjNUieSjO0VwaDludW255rrDjfQ0NgsdGaoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=2.%E6%8A%80%E6%9C%AF%E5%87%BA%E5%8F%A3%E4%BF%A1%E6%81%AF%E7%99%BB%E8%AE%B0%E8%A1%A8.wps)

禁止は該当範囲の輸出を止め、制限は許可の道筋を設けます。自動許可にも手続きがあります。対象外は特定の規定から除くことです。条件を先に読む必要があります。[CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

例えば11月に未公開モデル技術を海外に許諾する場合、現在の登録と既存法を調べます。募集終了まで待つだけでは不十分ですが、草案だけを根拠に全面禁止済みとも言えません。この例は取引の承認ではありません。
