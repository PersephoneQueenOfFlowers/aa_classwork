require_relative 'tic_tac_toe'

class TicTacToeNode
  attr_accessor :board, :next_mover_mark, :prev_move_pos
  def initialize(board, next_mover_mark, prev_move_pos = nil)

    @board = board
    @next_mover_mark = next_mover_mark
    @prev_move_pos = prev_move_pos

  end

  def losing_node?(evaluator)
  end

  def winning_node?(evaluator)
  end

  # This method generates an array of all moves that can be made after
  # the current move.
  def children
    poss_moves = [] 
    (0..2).each do |row|
      (0..2).each do |col|

        #1) check if empty 
        #2) create @board.dup and place opposite mark at that position if empty

        # p next_mover_mark
        # p @board[row,col]
        # cycle through these positions, and see if there's already a mark,
        #if not, place it in poss_moves
        #  child_node = TicTacToeNode.new(board,next_mover_mark) 
        p @board
        # poss_moves << [row,col] if @prev_move_pos != [row,col]
        # not sure if here we have to pull up the board and get ALL previous moves here
      end
    end
    poss_moves
  end
end
