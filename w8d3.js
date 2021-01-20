

Array.prototype.myMap = function(cb){
  //this.myEach 
  //cb = myDoubler
  let mapped = [];
  this.myEach( function(ele){ // (ele) => {}
    //cb = myDoubler 
    let result = cb(ele);
    mapped.push(result);
  });
  return mapped; 
}

Array.prototype.myEach = function (cb) { //innerFunction is the callback
  //cb = the anonymous function on line 13
  // debugger
  for (let i = 0; i < this.length; i++) { //this is the array
    cb(this[i]); // is innerFunction
  }
  //no return value 
}

Array.prototype.myMap2 = function(cb){ //my doubler is cb
  let mapped = [];
  // debugger
  const innerFunction = function(ele){ //just a definition, not invocation
    // debugger
    mapped.push(cb(ele)); // pushing the result of call to DOUBLER into the return array 
  }

  this.myEach(innerFunction); //innerfunction is uninvoked, however, myEach IS invoked here, if passed as pointer 
  // innerFunction(): giving it the return value of undefined 
  return mapped; //returning the return array
}

let arr = [1,2,3];
function myDoubler(ele){
  return ele * 2
}

[1,2,3].myMap2(myDoubler)
console.log(arr)