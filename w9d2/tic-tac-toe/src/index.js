const View = require('./ttt-view.js');
const Game = require('./game.js');


// Game 
$(() => {
  const rootEl = $('.ttt');
  const game = new Game();
  new View(game, rootEl);

    // $("li").data('pos', '[0,0]')
  });
