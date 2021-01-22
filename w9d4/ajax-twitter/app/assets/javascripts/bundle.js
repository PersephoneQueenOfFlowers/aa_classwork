/******/ (() => { // webpackBootstrap
/******/ 	var __webpack_modules__ = ({

/***/ "./frontend/api_util.js":
/*!******************************!*\
  !*** ./frontend/api_util.js ***!
  \******************************/
/***/ ((module) => {

const APIUtil = {
  followUser: (id,FollowToggle) => {
    $.ajax({
      type: 'POST',
      url: `/users/${id}/follow`,
      dataType: 'json',
      success: function () {
        // console.log(data);
        debugger;
        FollowToggle.followState = "unfollowed";
        FollowToggle.render();
    }});
  },

  unfollowUser: (id,FollowToggle) => {
    $.ajax({
      type: 'DELETE',
      url: `/users/${id}/follow`,
      dataType: 'json',
      success: function () {
        // console.log(data);
        FollowToggle.followState = "unfollowed";
        FollowToggle.render();
    }});
  }
};

module.exports = APIUtil;



/***/ }),

/***/ "./frontend/follow_toggle.js":
/*!***********************************!*\
  !*** ./frontend/follow_toggle.js ***!
  \***********************************/
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

const APIUtil = __webpack_require__(/*! ./api_util */ "./frontend/api_util.js");

class FollowToggle {
  constructor(el){
    this.$el = $(el); 
    this.userid = this.$el.data("user-id");
    this.followState = this.$el.data("initial-follow-state"); 
    this.render();
    this.$el.on('click', this.handleClick.bind(this));
  }

  render(){
    
    if (this.followState === "unfollowed") {
      $('.follow-toggle').text('Follow!');
    } else if (this.followState === "followed") {
      $('.follow-toggle').text('Unfollow!');
    } else if (this.followState === "unfollowing") {
      $('.follow-toggle').text('Unfollowing!');
      $('.follow-toggle').attr('disabled', true);
    } else if (this.followState === "following") {
      $('.follow-toggle').text('Following!');
      $('.follow-toggle').attr('disabled', true);
    }
  }  

  handleClick(e){
    e.preventDefault();
    e.stopPropagation();
    if (this.followState === "unfollowed") {
      this.followState = 'following';
      this.render();
      APIUtil.followUser(this.userid, this)
      this.render();
    } else if (this.followState === "followed"){
      this.followState = 'unfollowing';
      this.render();
      APIUtil.unfollowUser(this.userid, this)
      this.render();
    }
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