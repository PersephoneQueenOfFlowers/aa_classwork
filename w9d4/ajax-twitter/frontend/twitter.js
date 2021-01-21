const FollowToggle = require('./follow_toggle');

$(function (){

  $.each($('button.follow-toggle'), function(idx, btn){
      new FollowToggle(btn);
  });

});

// $.each([52, 97], function (index, value) {
//   alert(index + ": " + value);
// });
