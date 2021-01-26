import React    from 'react';
import ReactDOM from 'react-dom';
import Clock from './clock';

class Widgette extends React.Component {
  render() {
    return (
      <div>
        <p>hello world from widgettes</p>
        <Clock />
        </div>
    );
  }
}

document.addEventListener('DOMContentLoaded', () => {
  const reactRoot = document.getElementById('root');
    console.log("hello world");
  // ReactDOM.render(<h1>Our first piece of React!!!!!!!</h1>,reactRoot);
  ReactDOM.render(<Widgette />, reactRoot);
});




