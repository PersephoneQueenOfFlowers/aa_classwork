import React from 'react';
class Clock extends React.Component {
  constructor(props) {
    super(props);
    this.state = {time: new Date()};
    setInterval(this._tick.bind(this), 1000);
  }

  _tick() {
    this.setState({ time: new Date() });
  }

  render() {
    return (
      <div>
        <h1>Clock</h1>
        <h2 className="time">{this.state.time}</h2>
      </div>
      );
  }
}

export default Clock;