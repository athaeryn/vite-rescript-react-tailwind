%%raw("import './App.css'")

type state = {counter: int}

type action = Add1 | Subtract1 | Times2 | Reset

@react.component
let make = () => {
  let (state, dispatch) = React.useReducer((state, action) =>
    switch action {
    | Add1 => {counter: state.counter + 1}
    | Subtract1 => {counter: state.counter - 1}
    | Times2 => {counter: state.counter * 2}
    | Reset => {counter: 0}
    }
  , {counter: 0})
  <div className="App">
    <div className="flex flex-col items-center p-8">
      <div className="text-6xl mb-6 text-white"> {state.counter->Int.toString->React.string} </div>
      <div className="flex space-x-3">
        <Button text="Add 1" onClick={() => dispatch(Add1)} />
        <Button text="Subtract 1" onClick={() => dispatch(Subtract1)} />
        <Button text="Times 2" onClick={() => dispatch(Times2)} />
        <Button text="Reset" onClick={() => dispatch(Reset)} />
      </div>
    </div>
  </div>
}
