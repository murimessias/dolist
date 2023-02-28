module Styles = {
  open Emotion

  let inputWrapper = css({
    "all": "unset",
    // Custom Styles
    "alignItems": "center",
    "backgroundColor": Theme.Colors.grayDark->Theme.Utils.hexToString,
    "borderRadius": Theme.Shapes.Radii.md,
    "boxSizing": "border-box",
    "color": Theme.Colors.white->Theme.Utils.hexToString,
    "display": "inline-flex",
    "fontFamily": "inherit",
    "fontSize": "18px",
    "fontSize": "max(18px, 1em)",
    "outlineColor": Theme.Colors.primary->Theme.Utils.hexToString,
    "outlineStyle": "solid",
    "maxWidth": "63.4rem",
    "outlineWidth": "0",
    "padding": "1em 0.75em",
    "transition": "all 150ms",
    "width": "100%",
    "&::placeholder": {
      "color": Theme.Colors.grayLight->Theme.Utils.hexToString,
    },
    // Element States
    "&:focus": {
      "outlineWidth": "2px",
    },
    "&:disabled": {
      "backgroundColor": Theme.Colors.grayLight->Theme.Utils.hexToString,
      "cursor": "not-allowed",
      "&::placeholder": {
        "color": Theme.Colors.gray->Theme.Utils.hexToString,
      },
    },
  })
}

@react.component
let make = (~placeholder=?, ~disabled=?) => {
  <input className=Styles.inputWrapper ?disabled ?placeholder />
}
