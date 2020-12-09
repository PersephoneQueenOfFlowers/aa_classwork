require_relative 'piece'

class Board 
  attr_accessor :board
  def initialize 
   @rows = Array.new(8){Array.new(8)}
   self.print
  end

  def [](pos)
    
  end

  def []=(pos, val)

  end

  def move_piece(start_pos, end_pos)

  end

   # determine if next_pos is an immediate viable move from cur_pos 
  def valid_pos?(cur_pos, next_pos)
   
  end

  def add_piece(piece, pos) 

  end

  def checkmate?(color) 

  end

  def in_check?(color)   

  end

  def find_king(color)  

  end

  def pieces

  end

  def dup 

  end

  def print 
    @board.each do |row|
      p row
    end
  end

  def move_piece!(color, start_pos , end_pos)

  end

end

my_board = Board.new
# my_board.print