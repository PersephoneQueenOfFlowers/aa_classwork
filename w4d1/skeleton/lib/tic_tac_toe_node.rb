require_relative 'tic_tac_toe'
require 'byebug'
class TicTacToeNode
  attr_accessor :board, :next_mover_mark, :prev_move_pos
  def initialize(board, next_mover_mark, prev_move_pos = nil)

    @board = board
    @next_mover_mark = next_mover_mark
    @prev_move_pos = prev_move_pos
  end

  def losing_node?(evaluator)
    return true if @board.over? && @board.winner != evaluator
    # return false if @board.winner.nil? || @board.winner == evaluator 
    loser = false 
    next_moves = children
    loser = next_moves.any? do |child|
      child.losing_node?(evaluator)
    end

    next_moves.any? do |child| 
      child?()
    end
    loser
  end

  def winning_node?(evaluator)
  end

  def flip_mark
    if @next_mover_mark == :x 
      :o 
    else
      :x
    end
  end

  # This method generates an array of all moves that can be made after
  # the current move.
  def children
    poss_moves = [] 
    (0..2).each do |row|
      (0..2).each do |col|
        pos = [row, col]
        if @board.empty?(pos)
          new_board = @board.dup
          new_board[pos] = @next_mover_mark
          new_mark = flip_mark 
          new_node = TicTacToeNode.new(new_board,new_mark,pos)
          poss_moves << new_node
        end
      end
    end
    poss_moves
  end
end
