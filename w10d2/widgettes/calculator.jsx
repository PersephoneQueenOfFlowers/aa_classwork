import React from 'react';

class Calculator extends React.Component{
  constructor(props){
    super(props);
    this.state = { 
      num1: '', 
      num2: '',
      result: 0
    };
    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
    this.add = this.add.bind(this);
    this.subtract = this.subtract.bind(this);
  }

  setNum1(e) {
    e.preventDefault();
    this.setState({ num1: parseInt(e.target.value) });
  }
  setNum2(e) {
    e.preventDefault()
    this.setState({ num2: parseInt(e.target.value)});
  }

  add(){
    let addResult = this.state.num1 + this.state.num2;
    this.setState({ result: addResult });
  }

  subtract() { 
    let subtractResult = this.state.num1 - this.state.num2;
    this.setState({ result: subtractResult });
  }


  render(){
    return (
      <div>
        <h1>Hello World</h1>
        <button onClick={this.add}>
                  Add
        </button>
        <button onClick={this.subtract}>
                  Subtract
        </button>
        <input name="num1" ref={this.input} value={this.state.num1} onChange={(e) => { this.setNum1(e) }} />
        <input name="num2" ref={this.input} value={this.state.num2} onChange={(e) => { this.setNum2(e) }} />
        <p>result: {this.state.result}</p>
        
      </div>
    );
  }
}

export default Calculator;
