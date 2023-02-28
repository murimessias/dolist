module Styles = {
  open Emotion

  let {toString: colorToString} = module(Theme.Colors)

  let inputWrapper = css({
    "all": "unset",
    // Custom Styles
    "alignItems": "center",
    "backgroundColor": Theme.Colors.grayDark->colorToString,
    "borderRadius": Theme.Shapes.Radii.md,
    "boxSizing": "border-box",
    "color": Theme.Colors.white->colorToString,
    "display": "inline-flex",
    "fontFamily": "inherit",
    "fontSize": "18px",
    "fontSize": "max(18px, 1em)",
    "outlineColor": Theme.Colors.primary->colorToString,
    "outlineStyle": "solid",
    "maxWidth": "63.4rem",
    "outlineWidth": "0",
    "padding": "1em 0.75em",
    "transition": "all 150ms",
    "width": "100%",
    "&::placeholder": {
      "color": Theme.Colors.grayLight->colorToString,
    },
    // Element States
    "&:focus": {
      "outlineWidth": "2px",
    },
    "&:disabled": {
      "backgroundColor": Theme.Colors.grayLight->colorToString,
      "cursor": "not-allowed",
      "&::placeholder": {
        "color": Theme.Colors.gray->colorToString,
      },
    },
  })
}

@react.component
let make = (~placeholder=?, ~disabled=?) => {
  <input className=Styles.inputWrapper ?disabled ?placeholder />
}
