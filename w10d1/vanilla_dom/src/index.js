const DOMNodeCollection = require ('./dom_node_collection');
const callbackQueue = [];
window.$l = function(arg){
  if(typeof arg === "string"){
    const nodeList = document.querySelectorAll(arg);
    const nodeListArr = Array.from(nodeList);
    return new DOMNodeCollection(nodeListArr);
  }else if( arg instanceof HTMLElement ){
    return new DOMNodeCollection([arg]);
  } else if(typeof arg === "function"){

    if (document.readyState !== "complete"){
      arg();  
    }else{
      callbackQueue.push(arg);
    }
  }
}

document.addEventListener('DOMContentLoaded', () => {
  callbackQueue.forEach(func => func());
});
// addToCallbackQueue = function(funct){

// }();

