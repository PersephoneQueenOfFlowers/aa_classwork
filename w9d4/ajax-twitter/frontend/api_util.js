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

