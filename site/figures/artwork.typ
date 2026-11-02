// Copyright 2026 Vikrant Rathore. CC BY-SA 4.0. Third-party packages retain their licenses.
// Editorial line drawings. Geometry is the artwork: no raster textures or generated images.
#import "@preview/cetz:0.3.4"
#let ink = rgb("#20343b")
#let teal = rgb("#08716d")
#let red = rgb("#b44c3b")
#let gray = rgb("#d4dbd9")
#let art-stroke = 0.95pt + ink
#let frame(draw) = cetz.canvas(length: 10mm, {
  import cetz.draw: *
  rect((0, 0), (16.4, 7.4), fill: white, stroke: none)
  draw()
})
#let dot(x, y, color: ink, size: 0.12) = {
  import cetz.draw: *
  circle((x, y), radius: size, fill: white, stroke: 1.15pt + color)
}
#let chip(x, y, factor: 1) = {
  import cetz.draw: *
  rect((x, y), (x + 2 * factor, y + 2 * factor), fill: white, stroke: art-stroke)
  rect((x + 0.4 * factor, y + 0.4 * factor), (x + 1.6 * factor, y + 1.6 * factor), fill: none, stroke: 0.65pt + gray)
  for i in range(1, 5) {
    let d = i * 0.4 * factor
    line((x + d, y - 0.3 * factor), (x + d, y), stroke: art-stroke)
    line((x + d, y + 2 * factor), (x + d, y + 2.3 * factor), stroke: art-stroke)
    line((x - 0.3 * factor, y + d), (x, y + d), stroke: art-stroke)
    line((x + 2 * factor, y + d), (x + 2.3 * factor, y + d), stroke: art-stroke)
  }
}
#let helix(x, y, height: 3.3) = {
  import cetz.draw: *
  let h = height / 2
  for side in (-1, 1) {
    bezier((x, y), (x + side * 0.9, y + h * 0.33), (x + side * 0.9, y + h * 0.66), (x, y + h), stroke: art-stroke)
    bezier((x, y + h), (x - side * 0.9, y + h * 1.33), (x - side * 0.9, y + h * 1.66), (x, y + height), stroke: art-stroke)
  }
  for i in range(1, 8) {
    let yy = i * height / 8
    let w = 0.66 * calc.sin(i * 45deg)
    line((x - w, y + yy), (x + w, y + yy), stroke: 0.8pt + if i == 3 or i == 6 { teal } else { gray })
  }
}
#let commons() = frame(() => {
  import cetz.draw: *
  // One shared route survives a boundary. Broken routes remain visible.
  let pts = ((1.5, 3.7), (3.3, 5.35), (3.3, 2.05), (5.4, 3.7), (12.1, 3.7), (14.1, 5.3), (14.1, 2.1))
  for pair in ((0, 1), (0, 2), (1, 3), (2, 3), (4, 5), (4, 6)) {
    line(pts.at(pair.first()), pts.at(pair.last()), stroke: art-stroke)
  }
  line((5.4, 3.7), (12.1, 3.7), stroke: 1.8pt + teal)
  line((8.5, 1.1), (8.5, 3.1), stroke: 1.6pt + red)
  line((8.5, 4.3), (8.5, 6.3), stroke: 1.6pt + red)
  line((6.5, 5.3), (8.1, 5.3), stroke: (paint: gray, thickness: 0.9pt, dash: "dashed"))
  line((8.9, 5.3), (10.5, 5.3), stroke: (paint: gray, thickness: 0.9pt, dash: "dashed"))
  line((8.3, 5.1), (8.7, 5.5), stroke: 1pt + red)
  for (i, p) in pts.enumerate() { dot(p.at(0), p.at(1), color: if i == 3 or i == 4 { teal } else { ink }) }
  circle((8.5, 3.7), radius: 0.3, stroke: 1.2pt + teal, fill: white)
})
#let mind-and-silicon() = frame(() => {
  import cetz.draw: *
  // Open model above, material dependencies below. Neither is a substitute for the other.
  let ps = ((6.7, 5.3), (8.2, 6.1), (9.7, 5.3), (8.2, 4.5))
  for (a, b) in ((0, 1), (1, 2), (2, 3), (3, 0), (0, 2)) { line(ps.at(a), ps.at(b), stroke: 1pt + teal) }
  for p in ps { dot(p.at(0), p.at(1), color: teal) }
  line((2, 3.6), (14.4, 3.6), stroke: 0.65pt + gray)
  line((8.2, 4.35), (8.2, 2.9), stroke: 1pt + teal)
  line((4.2, 2.9), (12.1, 2.9), stroke: art-stroke)
  chip(3.2, 0.65, factor: 0.8)
  for i in range(3) { rect((7.45, 0.7 + i * 0.55), (9.05, 1.05 + i * 0.55), fill: white, stroke: art-stroke) }
  rect((11.3, 0.65), (13.1, 2.1), fill: none, stroke: art-stroke)
  for i in range(3) { line((11.6, 0.95 + i * 0.43), (12.8, 0.95 + i * 0.43), stroke: 0.7pt + gray) }
  for x in (4.0, 8.2, 12.2) { line((x, 2.3), (x, 2.9), stroke: art-stroke) }
  line((5.6, 2.7), (5.6, 3.1), stroke: 1.5pt + red)
})
#let fortress-trap() = frame(() => {
  import cetz.draw: *
  // Two identical actors, interrupted exchange, and a possible shared connection.
  for x in (2.5, 11.5) {
    rect((x, 2.2), (x + 2.4, 5.4), fill: none, stroke: art-stroke)
    circle((x + 1.2, 3.8), radius: 0.5, fill: white, stroke: 1pt + ink)
    line((x + 0.65, 2.2), (x + 0.65, 1.4), stroke: 1.1pt + teal)
    line((x + 1.75, 2.2), (x + 1.75, 1.4), stroke: 1.1pt + teal)
  }
  line((5.0, 4.2), (7.55, 4.2), stroke: art-stroke)
  line((8.85, 4.2), (11.4, 4.2), stroke: art-stroke)
  line((7.8, 3.8), (7.8, 4.6), stroke: 1.5pt + red)
  line((8.6, 3.8), (8.6, 4.6), stroke: 1.5pt + red)
  line((3.15, 1.4), (13.25, 1.4), stroke: 1.1pt + teal)
  circle((8.2, 1.4), radius: 0.32, fill: white, stroke: 1.2pt + teal)
})
#let release-gates() = frame(() => {
  import cetz.draw: *
  // A private artifact has branching paths. This is not a universal legal checklist.
  rect((1.6, 2.9), (3.1, 4.8), fill: white, stroke: art-stroke)
  for y in (3.35, 3.8, 4.25) { line((1.95, y), (2.75, y), stroke: 0.7pt + gray) }
  line((3.1, 3.85), (6.1, 3.85), stroke: art-stroke)
  circle((6.6, 3.85), radius: 0.5, fill: white, stroke: art-stroke)
  line((7.1, 3.85), (9.0, 3.85), (9.0, 5.45), (13.8, 5.45), stroke: 1.25pt + teal)
  line((7.1, 3.85), (10.6, 3.85), stroke: art-stroke)
  line((7.1, 3.85), (9.0, 3.85), (9.0, 2.2), (11.8, 2.2), stroke: art-stroke)
  for p in ((14.1, 5.45), (12.2, 2.2)) { dot(p.at(0), p.at(1), color: teal, size: 0.2) }
  line((10.95, 3.45), (10.95, 4.25), stroke: 1.6pt + red)
  line((12.4, 2.2), (14.1, 2.2), stroke: (paint: gray, thickness: 0.9pt, dash: "dashed"))
})
#let living-code() = frame(() => {
  import cetz.draw: *
  helix(4.1, 2.15, height: 3.5)
  line((8.2, 1.2), (8.2, 6.2), stroke: 0.6pt + gray)
  rect((11.2, 2.1), (13.8, 4.7), fill: none, stroke: art-stroke)
  rect((12.0, 4.7), (13.0, 5.4), fill: none, stroke: art-stroke)
  line((11.6, 2.6), (13.4, 2.6), stroke: 1.1pt + teal)
  line((11.6, 3.3), (13.4, 3.3), stroke: 0.7pt + gray)
  line((11.6, 4.0), (13.4, 4.0), stroke: 0.7pt + gray)
  for x in (2.9, 4.1, 5.3) { dot(x, 1.25, color: teal) }
  for x in (11.3, 12.5, 13.7) { dot(x, 1.25, color: teal) }
})
#let three-frontiers() = frame(() => {
  import cetz.draw: *
  line((5.45, 1.2), (5.45, 6.2), stroke: 0.6pt + gray)
  line((10.95, 1.2), (10.95, 6.2), stroke: 0.6pt + gray)
  chip(1.65, 2.7, factor: 1)
  line((2.65, 3.1), (2.65, 4.3), stroke: 1.2pt + teal)
  helix(8.2, 2.2, height: 3.4)
  rect((12.1, 2.35), (15.0, 4.0), fill: none, stroke: art-stroke)
  for i in range(1, 4) { line((12.1 + i * 0.725, 2.35), (12.1 + i * 0.725, 4.0), stroke: 0.65pt + gray) }
  line((12.1, 3.17), (15.0, 3.17), stroke: 0.65pt + gray)
  circle((14.3, 5.25), radius: 0.35, fill: none, stroke: 1pt + teal)
  line((14.3, 4.55), (14.3, 4.75), stroke: 1pt + teal)
  line((14.3, 5.75), (14.3, 5.95), stroke: 1pt + teal)
  line((13.6, 5.25), (13.8, 5.25), stroke: 1pt + teal)
  line((14.8, 5.25), (15.0, 5.25), stroke: 1pt + teal)
})
