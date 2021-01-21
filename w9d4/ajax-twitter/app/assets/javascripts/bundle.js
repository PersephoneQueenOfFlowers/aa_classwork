/******/ (() => { // webpackBootstrap
/******/ 	var __webpack_modules__ = ({

/***/ "./frontend/follow_toggle.js":
/*!***********************************!*\
  !*** ./frontend/follow_toggle.js ***!
  \***********************************/
/***/ ((module) => {



class FollowToggle {
  constructor(el){
    // debugger
    this.$el = $(el); 
    this.userid = this.$el.data("user_id");
    this.followState = this.$el.data("initial-follow-state"); 
    this.render();
  }

  render(){
    
    if (this.followState === "unfollowed") {
      $('.follow-toggle').text('Follow!');
    } else if (this.followState === "followed")
      $('.follow-toggle').text('Unfollow!');
  }
}

module.exports = FollowToggle;

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
/*!*****************************!*\
  !*** ./frontend/twitter.js ***!
  \*****************************/
const FollowToggle = __webpack_require__(/*! ./follow_toggle */ "./frontend/follow_toggle.js");

$(function (){

  $.each($('button.follow-toggle'), function(idx, btn){
      new FollowToggle(btn);
  });

});

// $.each([52, 97], function (index, value) {
//   alert(index + ": " + value);
// });

})();

/******/ })()
;
//# sourceMappingURL=bundle.js.map