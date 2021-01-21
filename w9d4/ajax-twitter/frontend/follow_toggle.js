

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