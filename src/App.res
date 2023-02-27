open Ancestor.Default

Emotion.injectGlobal({
  "*": {
    "boxSizing": "border-box",
    "margin": "0",
    "padding": "0",
  },
  "html": {
    "fontSize": "10px",
  },
  "html, body, #root": {
    "fontFamily": Theme.Typography.Family.sans,
    "height": "100%",
    "width": "100%",
  },
})

@react.component
let make = () => {
  <Box bgColor=[xs(Theme.Colors.black)] height=[xs(100.0->#pct)] width=[xs(100.0->#pct)]>
    <div />
  </Box>
}
