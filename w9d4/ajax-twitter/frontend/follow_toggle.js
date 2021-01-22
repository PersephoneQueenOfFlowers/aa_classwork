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
    } else if (this.followState === "followed")
      $('.follow-toggle').text('Unfollow!');
  }

  handleClick(e){
    e.preventDefault();
    e.stopPropagation();
    if (this.followState === "unfollowed") {
      APIUtil.followUser(this.userid,this)
    } else if (this.followState === "followed"){
      APIUtil.unfollowUser(this.userid, this)
    }
    this.render();
  }
}

module.exports = FollowToggle;



