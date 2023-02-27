open Render

module Styles = {
  open Emotion

  let {toString: colorToString} = module(Theme.Colors)

  let button = css({
    "all": "unset",
    // Custom Styles
    "align-items": "center",
    "backgroundColor": Theme.Colors.primary->colorToString,
    "borderRadius": Theme.Shapes.Radii.md,
    "boxSizing": "border-box",
    "color": Theme.Colors.white->colorToString,
    "cursor": "pointer",
    "display": "inline-flex",
    "fontSize": Theme.Typography.FontSizes.md,
    "fontWeight": Theme.Typography.FontWeight.bold,
    "justify-content": "center",
    "letterSpacing": "-0.035em",
    "min-height": "3.6rem",
    "min-width": "10.5rem",
    "paddingLeft": "1.6rem",
    "paddingRight": "1.6rem",
    "textAlign": "center",
    "transition": "250ms ease",
    "&:hover": {
      "backgroundColor": Theme.Colors.primaryDark->colorToString,
    },
  })
}

@react.component
let make = (~children, ~onClick=?) => {
  <button className=Styles.button ?onClick> {children->s} </button>
}
