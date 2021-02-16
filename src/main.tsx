import React from "react";
import ReactDOM from "react-dom";
import "./index.css";
import { make as App } from "./App.bs.js";

ReactDOM.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
  document.getElementById("root")
);
