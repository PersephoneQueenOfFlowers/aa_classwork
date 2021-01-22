import { htmlGenerator } from "./warmup";

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
    htmlGenerator(this.printTime(), clockElement);
    setInterval(this._tick.bind(this), 1000);
  }

  printTime() {
    // Format the time in HH:MM:SS
    // Use console.log to print it.
    let time = `${this.hours}:${this.minutes}:${this.seconds}`;
    return time;
  }

  _tick() {
    if (this.seconds === 59) {
      this.seconds = 0;
      this.minutes += 1;
    } else {
      this.seconds += 1;
    }

    if (this.minutes === 59 && this.seconds === 59) {
      this.minutes = 0;
      this.hours += 1;
    }

    if (this.hours === 23 && this.minutes === 59 && this.seconds === 59) {
      this.hours = 0;
    }
    // 1. Increment the time by one second.
    // 2. Call printTime.
    htmlGenerator(clock.printTime(), clockElement);
  }
}

const clockElement = document.getElementById('clock');
const clock = new Clock();

