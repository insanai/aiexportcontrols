# 04. चीन के खुले मॉडल आगे कहां जाएंगे

## खुलापन कई तरह का है
```{typst-diagram}
:alt: पहले से सार्वजनिक / मसौदे में बाहर / पहली खुली रिलीज / सरल अनुमति / निजी तकनीक / कसौटी·हस्तांतरण देखें / CN-A1
:caption: पहले से सार्वजनिक / मसौदे में बाहर / पहली खुली रिलीज / सरल अनुमति / निजी तकनीक / कसौटी·हस्तांतरण देखें / CN-A1

#set text(font: ("Noto Sans Devanagari", "DejaVu Sans"), size: 15pt, fill: rgb("#172e38"))
#set par(justify: false)
#let tile(a,b,c) = block(width: 540pt, inset: 15pt, fill: c.lighten(94%), stroke: (left: 4pt + c))[#grid(columns: (205pt,1fr), gutter: 20pt, text(weight: "bold", a), b)]
#stack(dir: ttb, spacing: 12pt,
tile("पहले से सार्वजनिक","मसौदे में बाहर",rgb("#08716d")),
tile("पहली खुली रिलीज","सरल अनुमति",rgb("#a57516")),
tile("निजी तकनीक","कसौटी·हस्तांतरण देखें",rgb("#b44232"))
)
```


डाउनलोड योग्य भार, खुला लाइसेंस और प्रशिक्षण दोहराने की पर्याप्त जानकारी अलग गुण हैं। OSI की परिभाषा उपयोग, अध्ययन, बदलाव और साझा करने की आजादी तथा डेटा जानकारी, कोड और पैरामीटर मांगती है। यह चीनी कानूनी कसौटी से अलग है। [OSI](https://opensource.org/ai/open-source-ai-definition)

DeepSeek R1 अपने कोड और भार के लिए MIT बताता है और छोटे तैयार किए गए संस्करणों के स्रोत समझाता है। Qwen3 प्रकाशित मॉडल और Apache 2.0 दर्ज करता है। ये मौजूद उदाहरण हैं, सभी मॉडल या अगले संस्करण का वादा नहीं। [R1](https://github.com/deepseek-ai/DeepSeek-R1) [QWEN](https://github.com/QwenLM/Qwen3)

नोट1 पहले से सार्वजनिक तकनीक को बाहर रखता है; नोट2 सीमित तकनीक के नए खुले निर्यात में सुविधा देता है। शोधपत्र का प्रकाशन निजी भार या प्रशिक्षण कोड का प्रकाशन नहीं होता। असली फाइल, सीमित डाउनलोड और बाद के निजी सुधार अलग देखने होंगे। घोषणा हर सीमा वाले मामले का उत्तर नहीं देती। [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps) [CNQA](https://www.mofcom.gov.cn/zwgk/zcjd/art/2026/art_b11d5c1e9374421e93e85dc87eba6e38.html)

## चार संभावनाएं, भविष्यवाणी नहीं

**खुले संस्करण जारी रहना।** स्पष्ट सुविधा इस रास्ते का समर्थन करती है। नई संकीर्ण शर्तें या दर्ज देरी इस विचार को कमजोर करेंगी। [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

**जारी करने से पहले तैयारी बढ़ना।** डेटा, सीमा और फाइल का रिकॉर्ड बढ़ सकता है। यह हमारा अनुमान है, देरी का प्रमाण नहीं। [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

**अलग उत्पाद संस्करण।** एक संस्करण खुला और अधिक शक्तिशाली मॉडल या खास डेटा निजी रह सकता है। यह व्यापारिक संभावना है, घोषणा की मांग नहीं। [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

**अधिक दूरस्थ सेवा।** आधिकारिक अंतर इस रास्ते को संभव बनाता है, लेकिन कीमत, निरंतरता, गोपनीयता या अन्य रोक से आजादी की गारंटी नहीं देता। [CNQA](https://www.mofcom.gov.cn/zwgk/zcjd/art/2026/art_b11d5c1e9374421e93e85dc87eba6e38.html)

हम अंतिम सूची, सार्वजनिक होने का अर्थ, स्वत: अनुमति का व्यवहार, नए चेकपॉइंट और अमेरिकी चिप नियम देखेंगे। चीन के खुले मॉडल खत्म होने की तारीख या संभावना के लिए स्रोत आधार नहीं देते। संस्करण, लाइसेंस, डाउनलोड तारीख और बाद के बदलाव सहेजना हमारा सुझाव है, नया कानूनी कर्तव्य नहीं। [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps) [EAR742](https://www.bis.gov/regulations/ear/742) [EAR744](https://www.bis.gov/regulations/ear/744)
