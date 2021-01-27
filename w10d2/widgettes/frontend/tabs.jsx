import React from 'react';

class Tabs extends React.Component{
  constructor(props) {
    super(props);
    this.tabs = props.tabs;
    this.index = 0;
    this.state = { active: "" }
  }

  addActiveClass(e) {
    e.preventDefault();
    const clicked = e.target.id;

    console.log(e);

    if(this.state.active === clicked) {
      this.setState( { active: "" });
    } else {
      this.setState( { active: clicked } );
    }
  }

  classInfo(ele) {
    console.log(ele);
    if(this.state.active === ele.id) {
      return "tab show";
    } else {
      return "tab hide";
    }
  }

  render(){
    return (
    <ul className="tab-container">
      {
        this.tabs.map( (el,idx) => { 
          return (<li key={el.title} 
                      className={this.classInfo(el)}
                      onClick={this.addActiveClass.bind(this)}>
                    <h1>{el.title}</h1>
                    { el.content }
                  </li>
            );
         })
      }
    </ul>
    );
  }
}

export default Tabs;
/*
In the render method of Tabs, render a collection of <h1>s (with titles) in a <ul> and the content of the selected tab in an <article>.
Consider creating a Header subcomponent for the tabs.
*/