class View {
  constructor(game, $el) {}

  bindEvents(ctx, pos) {
    // const that = this;
    // let thisPos = bindArgs; 
    // let thisPlay = ctx.playMove;
    // debugger;
    ctx.playMove(pos)
    // return function(...callArgs){
    //   return ctx.apply(thisPlay, thisPos);
    // }
  }

  makeMove($square) {}

  setupBoard() {
    let $grid = $("<ul></ul>").html('<li data-pos="[0,0]"></li><li data-pos="[0,1]"></li><li data-pos="[0,2]"></li"><li data-pos="[1,0]"></li><li data-pos="[1,1]"></li><li data-pos="[1,2]"></li><li data-pos="[2,0]"></li><li data-pos="[2,1]"></li><li data-pos="[2,2]"></li>');
    $('.ttt').append($grid);
  }
}

module.exports = View;


