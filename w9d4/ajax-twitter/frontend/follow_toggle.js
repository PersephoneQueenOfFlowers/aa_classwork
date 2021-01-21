
class FollowToggle {
  constructor(el){
    // debugger
    this.$el = $(el); 
    this.userid = this.$el.data("user_id");
    this.followState = this.$el.data("initial-follow-state"); 
    this.render();
    // this.$el.on('click', function (e) {
    //   // handleClick(e);
    //   console.log('clicked' + e);
    //   this.$el.handleClick(e);
    // })
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
      // ajax post request
      $.ajax({
        type: 'POST',
        url: "/users/${this.userid}/follow",
        dataType: 'json'
      });
      this.followState = "followed";
    } else if (this.followState === "followed"){
      // ajax delete request
      $.ajax({
        type: 'DELETE',
        url: "/users/${this.userid}/follow",
        dataType: 'json'
      });
      this.followState = "unfollowed";
    }
    this.render();
  }
}

module.exports = FollowToggle;

