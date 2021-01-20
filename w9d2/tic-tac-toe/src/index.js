const View = require('./ttt-view.js');
const Game = require('./game.js');

// Game 
$(() => {
  // Your code here
  const $figure = $('.ttt');
  const $game = new Game();
  const $view = new View($game, $figure);
  console.log($view);
  // create a 3x3 grid, ul list with 9 li items;
  // use flex to make 3 items per row;
  // create boarders around items; 
  $view.setupBoard();

});
