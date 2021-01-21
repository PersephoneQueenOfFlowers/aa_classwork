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
    // debugger;
    $targetPos = $targetEl.data('pos')
    $view.bindEvents($game, $targetPos);


    // $targetEl.css('background-color', 'red');
    // $targetEl.text('hello');
    // $("li").text(mark);

    // $("li").data('pos', '[0,0]')
  });
