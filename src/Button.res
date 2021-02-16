%%raw("import './Button.css'")

@react.component
let make = (~text, ~onClick) =>
  <button
    className="Button"
    onClick={e => {
      ReactEvent.Mouse.preventDefault(e)
      onClick()
    }}
    type_="button">
    {text->React.string}
  </button>
