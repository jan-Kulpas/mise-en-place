#let frame(outer, inner) = (x, y) => (
  left: if x > 0 { inner } else { outer },
  right: outer,
  top: if y < 1 { outer } else { inner },
  bottom: outer,
)

#let ingredient(value, size: 1, depth: 0) = (
  type: "ingredient",
  size: size,
  depth: depth,
  value: value,
)
