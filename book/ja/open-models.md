# 04. 中国の公開モデルの将来

## 公開には複数の意味がある
```{typst-diagram}
:alt: 既存公知 / 案の除外 / 初めての公開 / 便宜ある許可 / 非公開技術 / 条件と移転を確認 / CN-A1
:caption: 既存公知 / 案の除外 / 初めての公開 / 便宜ある許可 / 非公開技術 / 条件と移転を確認 / CN-A1

#set text(font: ("Noto Sans CJK JP", "DejaVu Sans"), size: 15pt, fill: rgb("#172e38"))
#set par(justify: false)
#let tile(a,b,c) = block(width: 540pt, inset: 15pt, fill: c.lighten(94%), stroke: (left: 4pt + c))[#grid(columns: (205pt,1fr), gutter: 20pt, text(weight: "bold", a), b)]
#stack(dir: ttb, spacing: 12pt,
tile("既存公知","案の除外",rgb("#08716d")),
tile("初めての公開","便宜ある許可",rgb("#a57516")),
tile("非公開技術","条件と移転を確認",rgb("#b44232"))
)
```


ダウンロードできる重み、開かれたライセンス、再現に足りる学習情報は別の性質です。OSIの定義は使用、研究、変更、共有の自由とデータ情報、コード、パラメーターを求めます。中国法上の判定基準とは別です。[OSI](https://opensource.org/ai/open-source-ai-definition)

DeepSeek R1はコードと重みのMIT許諾を記し、蒸留版の由来も区別します。Qwen3は公開モデルとApache 2.0を記します。既存公開の具体例であり、各社全モデルや将来版の保証ではありません。[R1](https://github.com/deepseek-ai/DeepSeek-R1) [QWEN](https://github.com/QwenLM/Qwen3)

注1は既に公知の技術を除外し、注2は制限技術の新しい公開輸出を容易にします。論文を出しても私有の重みや学習コードが公開されるとは限りません。実際のファイル、限定ダウンロード、後の私有改良を個別に見ます。公告はすべての境界例に答えていません。[CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps) [CNQA](https://www.mofcom.gov.cn/zwgk/zcjd/art/2026/art_b11d5c1e9374421e93e85dc87eba6e38.html)

## 予測ではない四つの可能性

**公開継続。** 明示された便宜がこの可能性を支えます。将来の縮小や確認された遅延は反対の証拠になります。[CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

**公開前の準備増加。** データ、指標、公開内容の記録が増えるかもしれません。私たちの推論であり、遅延の実証ではありません。[CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

**製品の分化。** 一つを公開し、高度版や特殊データを非公開にする選択もあり得ます。公告の義務ではありません。[CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

**遠隔サービスの増加。** 公式の区別から合理的な可能性ですが、料金、継続、プライバシー、他の禁止からの自由は保証しません。[CNQA](https://www.mofcom.gov.cn/zwgk/zcjd/art/2026/art_b11d5c1e9374421e93e85dc87eba6e38.html)

最終目録、公知の定義、自動許可の運用、新チェックポイント、米国の半導体規則を観察します。中国の公開モデルが終わる日を示す根拠も確率も本書にはありません。版、ライセンス、取得日、改変の記録は私たちの提案で、追加の法的義務ではありません。[CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps) [EAR742](https://www.bis.gov/regulations/ear/742) [EAR744](https://www.bis.gov/regulations/ear/744)
