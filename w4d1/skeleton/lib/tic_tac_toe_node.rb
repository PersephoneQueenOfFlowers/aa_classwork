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

  def flip_mark
    @next_mover_mark == :x ? :o : :x
  end

  # This method generates an array of all moves that can be made after
  # the current move.
  def children
    poss_moves = [] 
    (0..2).each do |row|
      (0..2).each do |col|
        pos = [row, col]
        if @board.empty?(pos)
          new_node = @board.dup
          new_node[pos] = @next_mover_mark
          # new_node.next_mover_mark = flip_mark
          # new_node.prev_move_pos =  pos
          # poss_moves << new_node
        end
      end
    end
    poss_moves
  end
end
