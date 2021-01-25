class DOMNodeCollection {
  constructor(htmlElements){
    this.htmlCollection = htmlElements; //array of HTMLElements
  }

  html(str){
    if(typeof str === 'string'){
      this.htmlCollection.forEach(el => el.innerHTML = str);
    }else {
      return this.htmlCollection[0].innerHTML;
    }
  }

  empty(){
    this.html("");
  }
  // calling object is the partent. parameter / arg is the object to append. 
  // This method should accept either a jQuery-lite wrapped 
  // collection, an HTML element, or a string. 
  append(arg){
    if (typeof arg === 'string') {
      console.log("hit")
      this.htmlCollection.forEach( ele => {
        ele.innerHTML += arg
      });
    } else if (arg instanceof HTMLElement ){
      this.htmlCollection.forEach( ele => {
        ele.innerHTML += arg.outerHTML
      });
    } else if(arg instanceof DOMNodeCollection){
      arg.htmlCollection.forEach (node => this.append(node));
    }
  }

  attr(){
    console.log("in attr");
    return this.htmlCollection.map(el => el.attributes);
  }
  
  addClass(arg){
    this.htmlCollection.forEach(el => el.classList.add(arg));
  }
  removeClass(){}
  
}


module.exports = DOMNodeCollection;