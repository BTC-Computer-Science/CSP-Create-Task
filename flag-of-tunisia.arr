include image

CONSTRUCTION-SHEET = image-url("https://flagspot.net/images/t/tn'.gif")
SCALE = 2

BACKGROUND-COLOR = "red" #IS.color(204, 0, 51, 0)

BACKGROUND = 
  rectangle(
    120 * SCALE, 
    80 * SCALE, 
    "solid", 
    BACKGROUND-COLOR)

STAR = 
  rotate(12, 
    radial-star(
      5, 
      9 * SCALE, 
      4 * SCALE, 
      "solid", 
      BACKGROUND-COLOR))

CRESCENT = 
  place-image(
    circle(12 * SCALE, "solid", "white"),
    19 * SCALE, 15 * SCALE,
    circle(15 * SCALE, "solid", BACKGROUND-COLOR))

STAR-ON-CRESCENT = 
  place-image(
    STAR,
    19 * SCALE, 15 * SCALE,
    CRESCENT)

DISC = 
  place-image(
    STAR-ON-CRESCENT,
    20 * SCALE, 20 * SCALE,
    circle(20 * SCALE, "solid", "white"))

FLAG = 
  place-image(
    DISC,
    60 * SCALE, 40 * SCALE,
    BACKGROUND)
