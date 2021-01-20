class View {
  constructor(game, $el) {}

  bindEvents() {}

  makeMove($square) {}

  setupBoard() {
    let $grid = $("<ul></ul>").html('<li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li>');
    $('.ttt').append($grid);
  }
}

module.exports = View;


