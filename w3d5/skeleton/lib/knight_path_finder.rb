require_relative "00_tree_node.rb"


class KnightPathFinder
  attr_accessor :root, :all_positions
  def initialize(pos)
    @root = PolyTreeNode.new(pos) #pos< array of 2 elements
    @all_positions = KnightPathFinder.build_all_positions
    @move_tree = build_move_tree
  end

  
  def valid_move?(current_pos, next_pos)
    cur_col, cur_row = current_pos
    next_col, next_row = next_pos
    bool_1 = (next_col - cur_col).abs == 2 && (next_row - cur_row).abs == 1
    bool_2 = (next_row - cur_row).abs == 2 && (next_col - cur_col).abs == 1
    return bool_1 || bool_2
  end
  
  def self.build_all_positions 
    all_positions = Hash.new()
    (0...8).each do |col|
      (0...8).each do |row|
        all_positions[[col,row]] = false
      end
    end
    all_positions
  end

  def build_next_moves current_node
    cur_pos = current_node.value 
    
    (0...8).each do |col|
      (0...8).each do |row|
        next_pos = [col, row] 
        if valid_move?(cur_pos,next_pos)
          current_node.children << PolyTreeNode.new(next_pos) 
          @all_positions[next_pos] = true 
        end
      end
    end
  end

  def build_all_moves  
    until @all_positions.values.all?{|val| val == true } 
      #return when build_next_moves 
      #this method call needs to update on each iteration with each of the children or moves. save the children as return  values from bnm, then we can call bnm again on that variable
      build_next_moves(self.root) # we're only building next moves from the root 
    end

  end

  # def find_path(target_pos)

  # end
end


#---Test-------------------------#
# kpf = KnightPathFinder.new([0, 0])
# kpf.find_path([2, 1]) # => [[0, 0], [2, 1]]
# kpf.find_path([3, 3]) # => [[0, 0], [2, 1], [3, 3]]