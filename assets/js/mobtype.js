import React from "react";
import { render } from "react-dom";
import axios from "axios";

const rootDiv = document.getElementById("root");

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = { text: window.initialText || "" };
  }

  onChange({ target }) {
    this.setState({ text: target.value });
    axios.post("/mobtype/update", {
      text: target.value
    });
  }

  render() {
    return (
      <div>
        <h1>Mobtype</h1>
        <textarea value={this.state.text} onChange={this.onChange.bind(this)} />
      </div>
    );
  }
}

render(<App />, rootDiv);
