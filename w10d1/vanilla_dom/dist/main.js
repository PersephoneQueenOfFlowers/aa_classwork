/*
 * ATTENTION: The "eval" devtool has been used (maybe by default in mode: "development").
 * This devtool is neither made for production nor for readable output files.
 * It uses "eval()" calls to create a separate source file in the browser devtools.
 * If you are trying to read the output file, select a different devtool (https://webpack.js.org/configuration/devtool/)
 * or disable the default devtool with "devtool: false".
 * If you are looking for production-ready output files, see mode: "production" (https://webpack.js.org/configuration/mode/).
 */
/******/ (() => { // webpackBootstrap
/******/ 	var __webpack_modules__ = ({

/***/ "./src/dom_node_collection.js":
/*!************************************!*\
  !*** ./src/dom_node_collection.js ***!
  \************************************/
/***/ ((module) => {

eval("class DOMNodeCollection {\n  constructor(htmlElements){\n    this.htmlCollection = htmlElements; //array of HTMLElements\n  }\n\n  html(str){\n    if(typeof str === 'string'){\n      this.htmlCollection.forEach(el => el.innerHTML = str);\n    }else {\n      return this.htmlCollection[0].innerHTML;\n    }\n  }\n\n  empty(){\n    this.html(\"\");\n  }\n  // calling object is the partent. parameter / arg is the object to append. \n  // This method should accept either a jQuery-lite wrapped \n  // collection, an HTML element, or a string. \n  append(arg){\n    if (typeof arg === 'string') {\n      console.log(\"hit\")\n      this.htmlCollection.forEach( ele => {\n        ele.innerHTML += arg\n      });\n    } else if (arg instanceof HTMLElement ){\n      this.htmlCollection.forEach( ele => {\n        ele.innerHTML += arg.outerHTML\n      });\n    } else if(arg instanceof DOMNodeCollection){\n      arg.htmlCollection.forEach (node => this.append(node));\n    }\n  }\n\n  attr(){\n    console.log(\"in attr\");\n    return this.htmlCollection.map(el => el.attributes);\n  }\n  \n  addClass(arg){\n    // check type of arg -> if string do sth, if arr do sth else\n    if (typeof arg === 'string'){\n      this.htmlCollection.forEach(el => el.classList.add(arg));\n    }\n    else{\n      this.htmlCollection.forEach(el => el.classList.add(...arg));\n    }\n  }\n  removeClass(arg){\n    if (typeof arg === 'string'){\n      this.htmlCollection.forEach(el => el.classList.remove(arg));\n    }\n    else{\n      this.htmlCollection.forEach(el => el.classList.remove(...arg));\n    }\n  }\n  \n  children(){\n    //return an instance of DOMNodeCollection\n    let childArr = [];\n    this.htmlCollection.forEach(node => {\n      childArr = childArr.concat(Array.from(node.children));\n    });\n    return new DOMNodeCollection(childArr);\n  }\n\n  parent(){\n    \n  }\n}\n\n\nmodule.exports = DOMNodeCollection;\n\n//# sourceURL=webpack:///./src/dom_node_collection.js?");

/***/ })

/******/ 	});
/************************************************************************/
/******/ 	// The module cache
/******/ 	var __webpack_module_cache__ = {};
/******/ 	
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/ 		// Check if module is in cache
/******/ 		if(__webpack_module_cache__[moduleId]) {
/******/ 			return __webpack_module_cache__[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = __webpack_module_cache__[moduleId] = {
/******/ 			// no module.id needed
/******/ 			// no module.loaded needed
/******/ 			exports: {}
/******/ 		};
/******/ 	
/******/ 		// Execute the module function
/******/ 		__webpack_modules__[moduleId](module, module.exports, __webpack_require__);
/******/ 	
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/ 	
/************************************************************************/
(() => {
/*!**********************!*\
  !*** ./src/index.js ***!
  \**********************/
eval("const DOMNodeCollection = __webpack_require__ (/*! ./dom_node_collection */ \"./src/dom_node_collection.js\");\n\nwindow.$l = function(arg){\n  if(typeof arg === \"string\"){\n    const nodeList = document.querySelectorAll(arg);\n    const nodeListArr = Array.from(nodeList);\n    return new DOMNodeCollection(nodeListArr);\n  }else if( arg instanceof HTMLElement ){\n    return new DOMNodeCollection([arg]);\n  }\n\n}\n\n//# sourceURL=webpack:///./src/index.js?");
})();

/******/ })()
;