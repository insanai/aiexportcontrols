# Las nuevas fronteras de la tecnología

Una guía visual del Anuncio 48 de China, los controles estadounidenses sobre IA y el futuro de los modelos abiertos chinos.
```{typst-diagram}
:alt: Inteligencia artificial 23 / Biomedicina 5 / Energía solar 12 / CN48
:caption: Inteligencia artificial 23 / Biomedicina 5 / Energía solar 12 / CN48

#set text(font: ("DejaVu Sans", "DejaVu Sans"), size: 15pt, fill: rgb("#172e38"))
#set par(justify: false)
#let row(label, n, col) = grid(columns: (140pt, 300pt, 40pt), gutter: 14pt, align: horizon, text(weight: "bold", label), rect(width: n / 40 * 300pt, height: 28pt, fill: col, stroke: none), text(size: 25pt, weight: "bold", str(n)))
#stack(dir: ttb, spacing: 18pt,
row("Inteligencia artificial", 23, rgb("#b44232")),
row("Biomedicina", 5, rgb("#08716d")),
row("Energía solar", 12, rgb("#d29b2b"))
)
```


**Edición de investigación: 2 de noviembre de 2026.** Distinguimos las obligaciones actuales, las propuestas y nuestro análisis. El libro explica las fuentes; no autoriza operaciones concretas.

## Dos países, distintas puertas

**China: registro en vigor, catálogo en consulta.** El anuncio del 16 de octubre abarca 40 tecnologías: 23 de IA, 5 de biomedicina y 12 de energía solar. Propone prohibir 14 y restringir 26. El registro previo para las transferencias cubiertas comenzó ese mismo día e incluye exportaciones iniciadas pero no terminadas. La consulta acaba el 15 de noviembre de 2026. [CN48](https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html) [CNQA](https://www.mofcom.gov.cn/zwgk/zcjd/art/2026/art_b11d5c1e9374421e93e85dc87eba6e38.html)

**Estados Unidos: controles de chips vigentes y una situación compleja para los modelos.** Los chips avanzados requieren comprobar permisos, destino, comprador y uso. Desde el 15 de enero de 2026, ciertas exportaciones desde Estados Unidos de chips como el H200 a China o Macao pueden recibir evaluación individual bajo condiciones. No es aprobación automática. La norma de difusión de IA sigue en el texto publicado, aunque BIS anunció que no la aplicaría. GAO cuestionó el procedimiento de esa política en mayo de 2026. [US26](https://www.govinfo.gov/content/pkg/FR-2026-01-15/html/2026-00789.htm) [EAR742](https://www.bis.gov/regulations/ear/742) [USNE](https://www.bis.gov/press-release/department-commerce-announces-rescission-biden-era-artificial-intelligence-diffusion-rule-strengthens) [GAO26](https://www.gao.gov/products/b-337935) [EAR774](https://www.bis.gov/regulations/ear/774)

## El hallazgo central

El anuncio no establece una prohibición general de los modelos abiertos chinos. El borrador excluye la tecnología de IA que ya es pública mediante código abierto o publicaciones académicas. Para nuevas exportaciones abiertas de tecnología restringida propone permisos automáticos u otras facilidades. Una exclusión y un trámite de permiso son cosas distintas; otras leyes pueden seguir siendo aplicables. [CN48](https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html) [CN-A1](https://www.mofcom.gov.cn/api-gateway/jpaas-web-server/front/document/download?fileUrl=YW5UzzlvCwcM%2FNHHX%2FtT6KYc7i4iYCs13RxyX1cYsF7Mi050tv2zWwJDAqyqUOFf3lPQeAoPgP%2BrmQMGF7Tta7RdRW1C2hni5Ufl7eigFU2aoR9BIV7bpVR%2BwDBnd46wm5m7QVY2Mj%2FXPJaIbSdBzxKM6WqPb1yMuUzPhfLWixM%3D&fileName=1.%E6%8B%9F%E5%88%97%E5%85%A5%E3%80%8A%E4%B8%AD%E5%9B%BD%E7%A6%81%E6%AD%A2%E5%87%BA%E5%8F%A3%E9%99%90%E5%88%B6%E5%87%BA%E5%8F%A3%E6%8A%80%E6%9C%AF%E7%9B%AE%E5%BD%95%E3%80%8B%E7%9A%84%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E3%80%81%E7%94%9F%E7%89%A9%E5%8C%BB%E8%8D%AF%E3%80%81%E5%85%89%E4%BC%8F%E6%8A%80%E6%9C%AF%E8%8C%83%E5%9B%B4%EF%BC%88%E5%BE%81%E6%B1%82%E6%84%8F%E8%A7%81%E7%A8%BF%EF%BC%89.wps) [CNQA](https://www.mofcom.gov.cn/zwgk/zcjd/art/2026/art_b11d5c1e9374421e93e85dc87eba6e38.html)

Ofrecemos capítulos, un atlas de 40 puntos y siete ediciones con PDF. Los anexos oficiales son archivos WPS; los PDF son copias convertidas localmente. El archivo local china_export_control.pdf contiene una presentación sobre organoides, ajena al anuncio, y no se usa como prueba.
## Documentos oficiales

- **48 / 1** [WPS original](https://insanai.github.io/chinaexportcontrol/sources/announcement-48-attachment-1.wps) | [PDF convertido](https://insanai.github.io/chinaexportcontrol/sources/announcement-48-attachment-1.pdf)
- **48 / 2** [WPS original](https://insanai.github.io/chinaexportcontrol/sources/announcement-48-attachment-2.wps) | [PDF convertido](https://insanai.github.io/chinaexportcontrol/sources/announcement-48-attachment-2.pdf)

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

