import React from 'react';
class Clock extends React.Component {
  constructor(props) {
    super(props);
    this.state = {time:''};
    setInterval(this._tick.bind(this), 1000);
  }

  _tick() {
    this._setTime();
  }

  _setTime(){
    let time = new Date();
    let hours = time.getHours();
    let minutes = time.getMinutes();
    let seconds = time.getSeconds();
    let timeString = `${hours}:${minutes}:${seconds}`;
    this.setState({ time: timeString });
  }

  render() {
    return (
      <div className="clock-container">
        <h1>Clock</h1>
        <h2 className="time">{ this.state.time }</h2>
      </div>
      );
  }
}

export default Clock;