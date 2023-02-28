module Colors = {
  let primaryDark = #hex("#5820CF")
  let primary = #hex("#743AF0")
  let primaryLight = #hex("#6F5A9A")

  let grayDark = #hex("#242424")
  let gray = #hex("#3A3939")
  let grayLight = #hex("#A7A7A7")

  let black = #hex("#070707")
  let white = #hex("#FFFFFF")
  let red = #hex("#FF1B51")
}

module Utils = {
  let hexToString = color => {
    switch color {
    | #hex(color) => color
    }
  }
}

module Typography = {
  module Family = {
    let sans = "DM Sans"
  }

  module FontSizes = {
    let xs = "0.8rem"
    let sm = "1.2rem"
    let md = "1.6rem"
    let lg = "2.0rem"
    let xl = "2.4rem"
  }

  module FontWeight = {
    let light = 300
    let regular = 500
    let bold = 700
  }
}

module Shapes = {
  module Radii = {
    let sm = "4px"
    let md = "6px"
    let lg = "8px"
  }
}
