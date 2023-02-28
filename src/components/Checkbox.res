module Styles = {
  open Emotion

  let {toString: colorToString} = module(Theme.Colors)

  let fillAnimation = keyframes({
    "0": {
      "transform": "scale(0)",
    },
    "50%": {
      "transform": "scale(1.25)",
    },
    "100%": {
      "transform": "scale(1)",
    },
  })

  let labelWrapper = css({
    "cursor": "pointer",
    "> input": {
      "display": "none",
    },
    "> span": {
      "alignItems": "center",
      "borderColor": Theme.Colors.primary->colorToString,
      "borderRadius": Theme.Shapes.Radii.md,
      "borderStyle": "solid",
      "borderWidth": "1px",
      "color": Theme.Colors.white->colorToString,
      "display": "inline-flex",
      "height": "2.4rem",
      "justifyContent": "center",
      "padding": "0.4rem",
      "position": "relative",
      "width": "2.4rem",
      "> svg": {
        "transform": "scale(0)",
      },
    },
    "> input:checked + span": {
      "animation": `${fillAnimation} 300ms forwards`,
      "animationDelay": "100ms",
      "backgroundColor": Theme.Colors.primary->colorToString,
      "> svg": {
        "animation": `${fillAnimation} 300ms forwards`,
        "animationDelay": "100ms",
      },
    },
  })
}

@react.component
let make = (~checked=?) => {
  <label className=Styles.labelWrapper>
    <input ariaHidden=true type_="checkbox" ?checked />
    <span>
      <Icon.Check />
    </span>
  </label>
}
