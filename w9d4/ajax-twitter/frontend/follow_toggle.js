const APIUtil = require("./api_util");

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



