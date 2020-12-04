# require 'byebug'
class Board
    attr_reader :size
    def initialize size 
      @size = size
      @grid = Array.new(size) {Array.new(size)}
    end

    def [] pos
      row, col = pos 
      @grid[row][col]
    end

    def []= pos, mark
      p mark
      row, col = pos
      @grid[row][col] = mark 
    end

    def complete_row? mark 
      @grid.each do |row|
        return true if row.all?{|el| el == mark  }
      end
      false
    end

    def complete_col? mark 
       @grid.transpose.each do |col|
        return true if col.all?{|el| el == mark  }
      end
      false
    end

    def complete_diag? mark
      length = @grid[0].length 
      return true if (0...length).all?{|n| @grid[n][n] == mark }
      return true if (0...length).all?{|n| @grid[length - 1 - n][n] == mark }
      false
    end

    def winner? mark 
      return true if (complete_row? mark) == true 
      return true if (complete_col? mark) == true
      return true if (complete_diag? mark) == true 
      false
    end

    # This Board#print method is given for free and does not need to be modified
    # It is used to make your game playable.
    def print
        @grid.each { |row| p row }
    end
end
