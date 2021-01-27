import React    from 'react';
import ReactDOM from 'react-dom';
import Tabs from './tabs';
import Clock from './clock';


class Widgette extends React.Component {

  tabs(){
    const content = ["","",(<Clock />)];
    return ["whatup?!", "goals", "clock" ].map( 
      (title,idx) => {return {title, content: content[idx]}});
  }

  render() {
    return (
      <div>
        <Tabs tabs={this.tabs()}/>
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




