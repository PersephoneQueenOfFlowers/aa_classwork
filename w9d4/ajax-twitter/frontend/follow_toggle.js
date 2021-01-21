

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

  handleClick(e){
    e.preventDefault();
    e.stopPropagation();
    debugger;
    if (this.followState === "unfollowed") {
      // ajax post request
      $.ajax({
        type: 'POST',
        url: "/users/${this.userid}/follow"
      });
      this.followState = "followed";
    } else if (this.followState === "followed"){
      // ajax delete request
      $.ajax({
        type: 'DELETE',
        url: "/users/${this.userid}/follow"
      });
      this.followState = "unfollowed";
    }
    this.render();
  }
}

module.exports = FollowToggle;

