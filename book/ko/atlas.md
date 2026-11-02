# 02. 40개 기술 지도

## 기술 수와 표의 행 수

첨부1은 한 코드 아래 여러 기술 항목을 묶습니다. 지도는 이를 40개 읽기 항목으로 나누고 원래 코드와 세부 번호를 유지합니다. 편집 색인이며 법적 목록을 대신하지 않습니다. [CN48](https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html) [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

우리가 세부 항목을 센 결과 AI는 금지 제안 6개·제한 제안 17개, 의약은 3개·2개, 태양광은 5개·7개입니다. 공식 합계인 14개·26개와 일치합니다. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps) [CNQA](https://www.mofcom.gov.cn/zwgk/zcjd/art/2026/art_b11d5c1e9374421e93e85dc87eba6e38.html)

요약 뒤에 중국어 원문의 해당 코드를 확인합니다. 어떤 조건은 하나만, 어떤 조건은 모두 충족해야 하며 특정 용도로 한정되기도 합니다. 공개 기술 제외, 편의, 의약 플랫폼, 태양광 장비의 주석도 실질 내용입니다. 요약은 모든 측정 조건을 재현하지 않습니다.

## 01. 민감 용도 합성 정보 탐지

**266401J / 1** | 인공지능 | 금지 제안

중국의 국경 간 데이터 보안이 주목적이며 정확도와 재현율 모두 95% 이상인 기술. 용도도 조건입니다. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

## 02. AI 악성 코드

**266402J / 1** | 인공지능 | 금지 제안

민감 시스템 공격이나 방어 우회에 쓰이는 특정 생성·변형 기술로 열거된 성공률 중 하나를 충족해야 합니다. 모든 코딩 도구는 아닙니다. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

## 03. 적응형 악성 행동

**266402J / 2** | 인공지능 | 금지 제안

정해진 우회·재작성 특성과 민감 용도를 가진 환경 적응 및 실행 중 행동 변경 기술. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

## 04. 악성 변종 자동 생성

**266402J / 3** | 인공지능 | 금지 제안

지정된 탐지 회피 변종의 자동 생성·분산 배포. 규모·성능 및 민감 용도 조건을 함께 봅니다. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

## 05. 핵심 데이터 모델

**266501J / 1** | 인공지능 | 금지 제안

중국 법정 핵심 데이터로 학습한 후 서비스를 제공하는 대형 모델. 브랜드로 판단하지 않습니다. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

## 06. 민감 분야 에이전트

**266502J / 1** | 인공지능 | 금지 제안

핵심 기반시설·국방·핵심 정부 업무가 주목적이고 266505X 참조 성능을 충족한 에이전트. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

## 07. 고정확도 합성 정보 탐지

**266402X / 8** | 인공지능 | 제한 제안

정확도·재현율 모두 98% 이상인 탐지 시스템과 장비 제조 기술. 기존 분류의 추가 항목입니다. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

## 08. 영상·이미지 정보 숨김

**266402X / 9** | 인공지능 | 제한 제안

강건성, 오탐 0.1% 이하, 비가시성의 세 그룹을 모두 충족해야 하며 그룹 안에는 대체 지표가 있습니다. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

## 09. AI 취약점 발견

**266404X / 6** | 인공지능 | 제한 제안

평가 점수, 독립 악용 능력, 효율 개선 등 여섯 조건 중 하나. 일반 보안 검사 전체가 아닙니다. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

## 10. 성문 인식

**266501X / 19** | 인공지능 | 제한 제안

식별·속도·위조 방지·소수 언어 및 방언 중 지정 기준 하나를 충족하며 측정 조건이 각각 있습니다. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

## 11. 중국어·소수 언어 번역

**266501X / 20** | 인공지능 | 제한 제안

해당 언어가 주목적이고 사람 평가 또는 의미 충실도와 BLEU 조건을 충족한 기술. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

## 12. 중요 데이터 모델

**266504X / 1** | 인공지능 | 제한 제안

법정 중요 데이터로 학습한 서비스 모델. 안전 조건을 갖춘 미량 사용 또는 적법한 공개 데이터에는 제한적 제외가 있습니다. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

## 13. 첨단 모델 핵심 기술

**266504X / 2** | 인공지능 | 제한 제안

10^26회 이상 계산, 매개변수 2조 개 이상, 또는 수출 시 적격 세계 10위 중 하나. 가중치·체크포인트·코드·구조 등을 포함합니다. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

## 14. 에이전트 계획

**266505X / 1** | 인공지능 | 제한 제안

실행 가능한 하위 작업 20개 이상, 분해 정확도 80% 이상, 평균 성공 90% 이상을 모두 충족. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

## 15. 다중 에이전트 협력

**266505X / 2** | 인공지능 | 제한 제안

동시 60개 이상, 동일 효과의 단일 에이전트 최단 시간 2배 이하, 최종 답 일치 85% 이상. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

## 16. 도구 사용 에이전트

**266505X / 3** | 인공지능 | 제한 제안

도구 200개 이상, 선택 정확도 90% 이상, 세 종류 이상 도구가 필요한 작업의 전체 평균 성공 90% 이상. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

## 17. 전략 의사 결정

**266505X / 4** | 인공지능 | 제한 제안

세 그룹 모두: 20단계 또는 동시 10개, 적응·200 ms 이하·제어 단위 10개 이상, 지정 평가에서 사람 90% 초과. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

## 18. AI 프로세서 설계

**266506X / 1** | 인공지능 | 제한 제안

14 nm 이하, 정수·부동소수점 계산, 첨단 패키징, 고속 연결, 새 구조, 지정 적용 등 하나. 크기만의 조건이 아닙니다. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

## 19. 메모리 칩 설계

**266506X / 2** | 인공지능 | 제한 제안

지정 3D 플래시·메모리 설계. 밀도·속도·접합·18 nm 이하·수직 채널·다층 적층 등의 대체 조건. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

## 20. 고속 클러스터 연결

**266507X / 1** | 인공지능 | 제한 제안

AI 카드 1만 장 초과 시스템의 칩·노드 간 양방향 대역폭 800 GB/s 이상. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

## 21. 분산 학습 복구

**266507X / 2** | 인공지능 | 제한 제안

1만 장 초과에서 평균 복구 120초 이하, 가시 중단 30초 이하 또는 네트워크 손실 5% 이하 등 한 조건. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

## 22. 효율적인 통신

**266507X / 3** | 인공지능 | 제한 제안

1만 장 초과와 선형 확장 98% 이상, 또는 지정 라우팅과 지연 1마이크로초 이하, 또는 통신 숨김 90% 이상. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

## 23. 여러 제조사 조정

**266507X / 4** | 인공지능 | 제한 제안

1만 장 초과, 두 제조사 이상 칩의 통합 조정·협력 추론 및 지정 프로토콜·효율·복구·지역 간 조건. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

## 24. 세포·유전자 치료 플랫폼

**262704J / 1** | 바이오의약 | 금지 제안

독자 지식재산의 재사용 플랫폼. 해외 소유권 이전만 금지 범위이며 비이전 허락·서비스·특정 개별 약물 작업은 제외됩니다. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

## 25. siRNA 약물 플랫폼

**262705J / 1** | 바이오의약 | 금지 제안

독자 재사용 siRNA 플랫폼으로 같은 소유권 경계와 허락·서비스·개별 약물 제외를 적용합니다. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

## 26. 지정 병원체 강화 기술

**267302J / 1** | 바이오의약 | 금지 제안

열거 특성 중 하나를 가진 인위적 변경·방향성 계대 강화 기술. 전체 바이오 연구가 아닙니다. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

## 27. 세포·유전자 치료 신규 표적

**262705X / 1** | 바이오의약 | 제한 제안

세계적으로 지정 경로에 공개되지 않은 신규 표적 발견·검증 기술. 특정 경우 제한 분야 편의를 적용합니다. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

## 28. siRNA 신규 표적

**262706X / 1** | 바이오의약 | 제한 제안

완전히 새로운 siRNA 표적의 발견·검증으로 같은 미공개 정의와 편의 주석을 적용합니다. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

## 29. 고용량 냉수소화

**263003J / 1** | 태양광 | 금지 제안

단일 선 연간 트리클로로실란 25만 톤 이상 유동층 공정과 장비 제조 기술. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

## 30. 고용량 실란 유동층

**263003J / 2** | 태양광 | 금지 제안

단일 선 연간 2만 톤 이상 실란 유동층 공정과 장비 제조 기술. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

## 31. 초박형 웨이퍼

**263004J / 1** | 태양광 | 금지 제안

두께 70마이크로미터 이하 제조·장비 기술. 코드·알고리즘·설계도도 포함합니다. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

## 32. 지정 전지 가장자리 처리

**263801J / 1** | 태양광 | 금지 제안

완전 웨이퍼 변 182~230 mm와 두께 140마이크로미터 이하 조건의 처리 및 장비 제조. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

## 33. 페로브스카이트·탠덤 제조

**263801J / 2** | 태양광 | 금지 제안

네 경로: 양산 실리콘 탠덤 182 mm 이상·30% 이상, 코팅 폭 1.1 m 이상, 단일 접합 1 m2·18% 이상, 또는 탠덤 1 m2·28% 이상. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

## 34. 대형 폴리실리콘 설계

**263004X / 1** | 태양광 | 제한 제안

단일 선 연간 3만 톤 이상으로 장비·건물 설계와 공정 패키지를 포함합니다. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

## 35. 고출력 환원

**263004X / 2** | 태양광 | 제한 제안

로당 연간 폴리실리콘 800톤 이상 공정과 장비 제조 기술. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

## 36. 결정 성장 설계

**263005X / 1** | 태양광 | 제한 제안

내경 1600 mm 이상, 열장 35인치 이상, 속도 분당 1.2 mm 이상 또는 동경 전력 40 kW 이하 등 지정 설계. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

## 37. 실리콘 봉 가공

**263005X / 2** | 태양광 | 제한 제안

지정 반봉 절단·연마 또는 길이 720 mm 이상 봉 가공 및 장비 제조. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

## 38. 대형·박형 웨이퍼

**263005X / 3** | 태양광 | 제한 제안

한 변 182 mm 이상 지정 사각 웨이퍼 또는 두께 130마이크로미터 이하와 추가 절단 조건을 갖춘 기술. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

## 39. 고효율 TOPCon·후면 접촉

**263802X / 1** | 태양광 | 제한 제안

코팅·확산·전극의 여섯 그룹. 여러 조건이 182~230 mm·140마이크로미터 이하와 처리량을 결합하며 고효율 정의도 적용합니다. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

## 40. 이종접합 공정

**263802X / 2** | 태양광 | 제한 제안

박막·저은 소재·구리 전극의 네 그룹. 일부는 110마이크로미터 이하와 추가 재료·생산 기준을 요구하므로 전체 주석을 봅니다. [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps)

