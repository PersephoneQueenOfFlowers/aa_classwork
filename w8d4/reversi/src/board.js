// DON'T TOUCH THIS CODE
if (typeof window === 'undefined'){
  var Piece = require("./piece");
}
// DON'T TOUCH THIS CODE

/**
 * Returns a 2D array (8 by 8) with two black pieces at [3, 4] 
 * and [4, 3] and two white pieces at [3, 3] and [4, 4]
 */
function _makeGrid () {
  let x = new Array(8);

  for(let i =0; i<x.length; i++){
    x[i] = new Array(8);
  }

  x[3][4] = new Piece("black");
  x[4][3] = new Piece("black");
  x[3][3] = new Piece("white");
  x[4][4] = new Piece("white");

  return x;
}

/**
 * Constructs a Board with a starting grid set up.
 */
function Board () {
  this.grid = _makeGrid();
}

Board.DIRS = [
  [ 0,  1], [ 1,  1], [ 1,  0],
  [ 1, -1], [ 0, -1], [-1, -1],
  [-1,  0], [-1,  1]
];

/**
 * Checks if a given position is on the Board.
 */
Board.prototype.isValidPos = function (pos) {
  let horizValid = (pos[0] >= 0 && pos[0] <= 7) ? true : false;
  let vertValid = (pos[1] >= 0 && pos[1] <= 7) ? true : false;

  return (horizValid && vertValid ? true : false); 
};

/**
 * Returns the piece at a given [x, y] position,
 * throwing an Error if the position is invalid.
 */
Board.prototype.getPiece = function (pos) {
  // console.log("grid position valid: => " + this.isValidPos(gridPosition));
  // console.log("getPiece: => " + gridPosition);
  if ( this.isValidPos(pos) === false  ){
    throw new Error('Not valid pos!');
  } else {
  let gridPosition = this.grid[pos[0]][pos[1]];
  return (gridPosition);
  }
};
// [pos[0]][pos[1]] then add this
/**
 * Checks if the piece at a given position
 * matches a given color.
 */
Board.prototype.isMine = function (pos, color) {
  if (this.getPiece(pos) === undefined){
    return false;
  }
  return ( this.getPiece(pos).color === color ? true : false );
};

/**
 * Checks if a given position has a piece on it.
 */
Board.prototype.isOccupied = function (pos) {
  return (typeof this.getPiece(pos) === Object ? true : false);
};

/**
 * Recursively follows a direction away from a starting position, adding each
 * piece of the opposite color until hitting another piece of the current color.
 * It then returns an array of all pieces between the starting position and
 * ending position.
 *
 * Returns an empty array if it reaches the end of the board before finding another piece
 * of the same color.
 *
 * Returns empty array if it hits an empty position.
 *
 * Returns empty array if no pieces of the opposite color are found.
 */
//         0,1
//          |
//      -1,1| 1,1
// -1,0------------- 1,0
//     -1,-1| -1,0
//          |
//         0,-1
// Piece.prototype.oppColor = function () {
//   return (this.color === "white" ? "black" : "white");
// };

Board.prototype._positionsToFlip = function(pos, color, dir, piecesToFlip = []){

  // the order as established that we want to add the positions to flip. 
  // 1#  advance the position in the given direction 
  // 2# check if it's a valid position 
  // 3# check if it's occupied 
  // 4# check if the color is the color we want to switch
  // 5# add it to the aray 

  pos[0] += dir[0];
  pos[1] += dir[1];
  piecesToFlip.push(pos);
  //stopping: if empty, or end of board, or our color. how do we check for base cases? 

  if (this.isOccupied(pos) === false){
    return []; 
  } else if (this.isValidPos(pos) === false) {
    return [];
  } else if (this.isMine(pos, color) ){
    return piecesToFlip;
  } else {
    this._positionsToFlip(pos, color, dir, piecesToFlip);
  }

  let currentPiece = this.getPiece(pos);
  if (currentPiece.oppColor === color ) {
    return [];
   }

};

/**
 * Checks that a position is not already occupied and that the color
 * taking the position will result in some pieces of the opposite
 * color being flipped.
 */
Board.prototype.validMove = function (pos, color) {
};

/**
 * Adds a new piece of the given color to the given position, flipping the
 * color of any pieces that are eligible for flipping.
 *
 * Throws an error if the position represents an invalid move.
 */
Board.prototype.placePiece = function (pos, color) {
};

/**
 * Produces an array of all valid positions on
 * the Board for a given color.
 */
Board.prototype.validMoves = function (color) {
};

/**
 * Checks if there are any valid moves for the given color.
 */
Board.prototype.hasMove = function (color) {
};



/**
 * Checks if both the white player and
 * the black player are out of moves.
 */
Board.prototype.isOver = function () {
};




/**
 * Prints a string representation of the Board to the console.
 */
Board.prototype.print = function () {
};


// DON'T TOUCH THIS CODE
if (typeof window === 'undefined'){
  module.exports = Board;
}
// DON'T TOUCH THIS CODE