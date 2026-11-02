# 04. 중국 공개 모델의 미래

## 공개의 여러 의미
```{typst-diagram}
:alt: 기존 공개 / 초안 제외 / 최초 공개 / 편의 허가 / 비공개 기술 / 조건·이전 확인 / CN-A1
:caption: 기존 공개 / 초안 제외 / 최초 공개 / 편의 허가 / 비공개 기술 / 조건·이전 확인 / CN-A1

#set text(font: ("Noto Sans CJK KR", "DejaVu Sans"), size: 15pt, fill: rgb("#172e38"))
#set par(justify: false)
#let tile(a,b,c) = block(width: 540pt, inset: 15pt, fill: c.lighten(94%), stroke: (left: 4pt + c))[#grid(columns: (205pt,1fr), gutter: 20pt, text(weight: "bold", a), b)]
#stack(dir: ttb, spacing: 12pt,
tile("기존 공개","초안 제외",rgb("#08716d")),
tile("최초 공개","편의 허가",rgb("#a57516")),
tile("비공개 기술","조건·이전 확인",rgb("#b44232"))
)
```


다운로드 가능한 가중치, 개방 라이선스, 재현에 충분한 학습 정보는 다릅니다. OSI 정의는 사용·연구·수정·공유의 자유와 데이터 정보·코드·매개변수를 요구합니다. 중국 규제의 법적 기준과도 별개입니다. [OSI](https://opensource.org/ai/open-source-ai-definition)

DeepSeek R1은 코드·가중치의 MIT 라이선스와 증류판의 다른 계보를 설명합니다. Qwen3은 공개 모델과 Apache 2.0을 문서화합니다. 기존 공개의 사례이지 모든 모델이나 차기 버전의 보장은 아닙니다. [R1](https://github.com/deepseek-ai/DeepSeek-R1) [QWEN](https://github.com/QwenLM/Qwen3)

주석1은 이미 공개된 기술을 제외하고 주석2는 제한 기술의 새 오픈소스 수출에 편의를 둡니다. 논문 공개가 비공개 가중치나 학습 코드 공개를 뜻하지는 않습니다. 실제 파일, 제한 다운로드, 나중의 비공개 개선을 따로 봅니다. 공고가 모든 경계 사례를 해결하지는 않습니다. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps) [CNQA](https://www.mofcom.gov.cn/zwgk/zcjd/art/2026/art_b11d5c1e9374421e93e85dc87eba6e38.html)

## 예측이 아닌 네 가능성

**공개 지속.** 명시적 편의가 이 가능성을 뒷받침합니다. 범위를 줄이는 새 규정이나 확인된 지연은 반대 증거가 됩니다. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

**출시 전 준비 증가.** 데이터, 기준, 공개 파일 기록이 늘 수 있습니다. 이는 우리의 추론이며 출시 지연을 입증하지 않습니다. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

**제품 분화.** 한 버전을 공개하고 더 강한 버전이나 특수 데이터를 비공개로 둘 수 있습니다. 사업 선택이지 공고 의무가 아닙니다. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

**서비스 확대.** 공식 서비스 구분이 이를 가능하게 하지만 가격, 지속성, 개인정보 보호, 다른 금지의 부재는 보장하지 않습니다. [CNQA](https://www.mofcom.gov.cn/zwgk/zcjd/art/2026/art_b11d5c1e9374421e93e85dc87eba6e38.html)

확정 목록, 공개 정의, 자동 허가 절차, 새 체크포인트, 미국 칩 규정을 관찰합니다. 중국 공개 모델이 끝날 날짜나 확률을 제시할 근거는 없습니다. 버전·라이선스·다운로드일·후속 변경을 보관하자는 제안은 새로운 법적 의무가 아닙니다. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps) [EAR742](https://www.bis.gov/regulations/ear/742) [EAR744](https://www.bis.gov/regulations/ear/744)
