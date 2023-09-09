#set page(width: auto, height: auto)
#import "../../src/lib.typ": *

#box(stroke: 2pt + red, canvas({
    import draw: *

    let next(mark) = {
        line((), (rel: (1, 0)), mark: mark)
        move-to((rel: (-1, .25)))
    }

    fill(blue)
    rotate(-90deg)

    let marks = (">", "<", "|", "<>", "o")
    for m in marks {
        next((end: m))
    }

    for m in marks {
        next((start: m))
    }

    fill(none)

    let marks = (">", "<")
    for m in marks {
        next((end: m))
    }

    for m in marks {
        next((start: m))
    }
}))

#box(stroke: 2pt + red, canvas({
  import draw: *

  line((0,0), (9,0), stroke: blue + 1pt)
  line((0,0), (9,0), stroke: green + .1pt)
  line((0,-1), (9,-1), stroke: blue + 1pt)
  line((0,-1), (9,-1), stroke: green + .1pt)

  set-style(mark: (stroke: (paint: green, miter-limit: 50),
                   fill: red))

  for x in range(0, 18) {
    line((x * .5, -1), (x * .5, 0), mark: (start: ">", end: ">",
      angle: (x + 1) * 10deg))
  }
}))

#box(stroke: 2pt + red, canvas({
  import draw: *

  line((0,0), (9,0), stroke: blue + 1pt)
  line((0,0), (9,0), stroke: green + .1pt)
  line((0,-1), (9,-1), stroke: blue + 1pt)
  line((0,-1), (9,-1), stroke: green + .1pt)

  set-style(mark: (stroke: (paint: green, miter-limit: 50),
                   fill: red))

  for x in range(0, 18) {
    line((x * .5, -1), (x * .5, 0), mark: (start: "<", end: "<",
      angle: (x + 1) * 10deg))
  }
}))

#box(stroke: 2pt + red, canvas({
  import draw: *

  line((0,0), (9,0), stroke: blue + 1pt)
  line((0,0), (9,0), stroke: green + .1pt)
  line((0,-1), (9,-1), stroke: blue + 1pt)
  line((0,-1), (9,-1), stroke: green + .1pt)

  set-style(mark: (stroke: (paint: green, miter-limit: 50, join: "round"),
                   fill: red))

  for x in range(0, 18) {
    line((x * .5, -1), (x * .5, 0), mark: (start: "<", end: ">",
      angle: (x + 1) * 10deg))
  }
}))

#box(stroke: 2pt + red, canvas({
  import draw: *

  line((0,0), (9,0), stroke: blue + 1pt)
  line((0,0), (9,0), stroke: green + .1pt)
  line((0,-1), (9,-1), stroke: blue + 1pt)
  line((0,-1), (9,-1), stroke: green + .1pt)

  set-style(mark: (stroke: (paint: green, miter-limit: 50, join: "bevel"),
                   fill: red))

  for x in range(0, 18) {
    line((x * .5, -1), (x * .5, 0), mark: (start: "<", end: ">",
      angle: (x + 1) * 10deg))
  }
}))
