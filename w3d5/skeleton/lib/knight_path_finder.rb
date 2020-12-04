require_relative "00_tree_node.rb"

class KnightPathFinder
  def initalize(pos)
    @root = PolyTreeNode.new(pos) #pos< array of 2 elements
    @move_tree = build_move_tree
  end

  def valid_move?(current_pos, next_pos)
      
        abs(col - cur_col) == 2 && abs(row - cur_row) == 1
        abs(row - cur_row) == 2 && abs(col - cur_col) == 1

  end

  def build_move_tree
    #root's children?
    # root.value = [0, 0]
    # root.children [next_move1, next_move_2]  next_move.value  next_moves.children
    (0...8).each do |col|
      (0...8).each do |row|
        # 64 possible positions on board
        for each position
          cur_col, cur_row] = [0, 0]
          possible_position = [col, row]
          root.children << PolyTreeNode.new(possible_position)
        end
      end
    end

  end

  def find_path(target_pos)

  end
end


#---Test-------------------------#
kpf = KnightPathFinder.new([0, 0])
kpf.find_path([2, 1]) # => [[0, 0], [2, 1]]
kpf.find_path([3, 3]) # => [[0, 0], [2, 1], [3, 3]]