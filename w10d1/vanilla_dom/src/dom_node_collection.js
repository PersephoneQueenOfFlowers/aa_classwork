class DOMNodeCollection {
  constructor(htmlElements){
    this.htmlCollection = htmlElements;
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
    if (typeof str === 'string') {

    } else if (arg instanceof HTMLElement ){

    } else {
      
    }
  }
}


module.exports = DOMNodeCollection;