const View = require('./ttt-view.js');
const Game = require('./game.js');

// Game 
$(() => {
  // Your code here
  // create a 3x3 grid, ul list with 9 li items;
  // use flex to make 3 items per row;
  // create boarders around items; 
  const $figure = $('.ttt');
  const $game = new Game();
  const $view = new View($game, $figure);
  $view.setupBoard();
  let $cell = $('.ttt ul li');
  $cell.on('click', (e) => {
    $targetEl = $(e.target);
    debugger;
    $view.bindEvents($game, e.target);

  });


});

// $cell.on('click', (e) => {
//   // debugger 
//   $view.bindEvents($game, e.target);
    //$(e.target).toggleClass()
// });
