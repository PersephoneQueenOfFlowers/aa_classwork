const DOMNodeCollection = require ('./dom_node_collection');

window.$l = function(arg){
  if(typeof arg === "string"){
    const nodeList = document.querySelectorAll(arg);
    const nodeListArr = Array.from(nodeList);
    return new DOMNodeCollection(nodeListArr);
  }else if( arg instanceof HTMLElement ){
    return new DOMNodeCollection([arg]);
  }

}