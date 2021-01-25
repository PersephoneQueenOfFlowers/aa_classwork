window.$l = function(arg){

  if(typeof arg === "string"){
    const nodeList = document.querySelectorAll(arg);
    console.log("nodeList: " + nodeList);
    return nodeList;
  }

} // not sure what this arg will be yet.