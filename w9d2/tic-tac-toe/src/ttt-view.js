class View {
  constructor(game, $el) {}

  bindEvents(ctx, bindArgs) {
    // const that = this;
    // debugger 
    ctx.playMove(bindArgs);
    return function(...callArgs){
      return that.apply(ctx, bindArgs.concat(callArgs));
    }
  }

  makeMove($square) {}

  setupBoard() {
    let $grid = $("<ul></ul>").html('<li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li>');
    $('.ttt').append($grid);
  }
}

module.exports = View;


