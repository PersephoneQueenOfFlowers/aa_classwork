class Clock {
  constructor() {
    // 1. Create a Date object.
    // 2. Store the hours, minutes, and seconds.
    // 3. Call printTime.
    // 4. Schedule the tick at 1 second intervals.
    this.date = new Date()
    setInterval(function () { 
      console.log("this => " + this)
      this._tick(printTime); 
    },1000);
  }
  
  printTime() {
    // Format the time in HH:MM:SS
    // Use console.log to print it.
    console.log("current time => " + this.date)
  }
  
  _tick(cb) {
    console.log("inside _tick =>" + this.date);
    // 1. Increment the time by one second.
    // 2. Call printTime.
  }
}

const clock = new Clock();
clock._tick.bind(clock)
clock.printTime.bind(clock)


// const obj = {
//   name: "Lola"
// }

// function greet(msg1, msg2) {
//   console.log(`${msg1}: ${this.name}`)
//   console.log(`${msg2}: ${this.name}`)
// }

// greet.bind(obj)("Hello", "Goodbye")