class Clock {
  constructor() {
    // 1. Create a Date object.
    // 2. Store the hours, minutes, and seconds.
    // 3. Call printTime.
    // 4. Schedule the tick at 1 second intervals.
    let date = new Date()
    // console.log("current time => " + date)
    this.printTime(date)
  }

  printTime() {
    // Format the time in HH:MM:SS
    // Use console.log to print it.
    console.log("current time => " + date)
  }

  _tick() {
    // 1. Increment the time by one second.
    // 2. Call printTime.
  }
}

const clock = new Clock();