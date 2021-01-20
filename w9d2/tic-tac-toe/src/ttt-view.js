class View {
  constructor(game, $el) {}

  bindEvents() {}

  makeMove($square) {}

  setupBoard() {
    console.log("made it in set up board");
    let $grid = $("<ul></ul>").html('<li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li>');
    $('.ttt').append($grid);
    $grid.css('display', 'flex');
  }
}

module.exports = View;
