const APIUtil = {
  followUser: (id,followState) => {
    debugger
    $.ajax({
      type: 'POST',
      url: "/users/${id}/follow",
      dataType: 'json',
      success: function (data) {
        console.log(data);
        followState = "unfollowed";
      });
    }
  },

  unfollowUser: (id,followState) => {
    $.ajax({
      type: 'DELETE',
      url: "/users/${id}/follow",
      dataType: 'json',
      success: function (data) {
        console.log(data);
        followState = "unfollowed";
      });
    }
  }
};

module.exports = APIUtil;

// if (this.followState === "unfollowed") {
//   // ajax post request
//   $.ajax({
//     type: 'POST',
//     url: "/users/${this.userid}/follow",
//     dataType: 'json'
//   });
//   this.followState = "followed";
// } else if (this.followState === "followed") {
//   // ajax delete request
//   $.ajax({
//     type: 'DELETE',
//     url: "/users/${this.userid}/follow",
//     dataType: 'json'
//   });
//   this.followState = "unfollowed";
// }