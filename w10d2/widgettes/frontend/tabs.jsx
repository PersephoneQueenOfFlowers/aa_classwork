import React from 'react';

class Tabs {
  constructor(props,title,content) {
    super(props);
    this.title = title;
    this.content = content;
    this.index = 0;
  }

  render(){
    <div className="tab-container">
      {this.state.title}
    </div>
  }
}

export default Tabs;
/*
In the render method of Tabs, render a collection of <h1>s (with titles) in a <ul> and the content of the selected tab in an <article>.
Consider creating a Header subcomponent for the tabs.
*/