
class Clock {
  constructor() {
    this.time = new Date();
  }

  _tick() {
    this.setState({  })
  }

  setInterval( function() {
       _tick(); 
      }, 1000);

  render() {
    return (
       <h1>Clock</h1>
      );
  }
}

export default Clock;