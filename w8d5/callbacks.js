class Clock {
  constructor() {
    // 1. Create a Date object.
    // 2. Store the hours, minutes, and seconds.
    // 3. Call printTime.
    // 4. Schedule the tick at 1 second intervals.
    let date = new Date();
    this.seconds = date.getSeconds();
    this.minutes = date.getMinutes();
    this.hours = date.getHours();
    // console.log("current time => " + date)
    console.log("this =>" + this)
    let boundTick = this._tick.bind(this)
    setInterval(boundTick, 1000)
  }

  printTime() {
    // Format the time in HH:MM:SS
    // Use console.log to print it.

    // console.log("current time => " + date);
  }

  _tick() {
    // 1. Increment the time by one second.
    // 2. Call printTime.
    console.log(this)
  }
}

const clock = new Clock();