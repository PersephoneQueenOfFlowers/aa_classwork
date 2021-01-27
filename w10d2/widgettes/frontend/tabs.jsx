import React from 'react';

class Tabs extends React.Component{
  constructor(props) {
    super(props);
    this.tabs = props.tabs;
    this.index = 0;
  }

  render(){
    return (
    <div className="tab-container">
      {
        this.tabs.map( el => { 
          return (<h1 key={el.title}>{el.title}</h1>);
         })
      }
    </div>
    );
  }
}

export default Tabs;
/*
In the render method of Tabs, render a collection of <h1>s (with titles) in a <ul> and the content of the selected tab in an <article>.
Consider creating a Header subcomponent for the tabs.
*/