require_relative "./card.rb"
# require_relative "./game.rb"
require "byebug"

class Board 

  @@values = {W: 2, X: 2, Q: 2, A: 2, Y: 2, P: 2, S: 2, N: 2 } 
   
  def initialize 
    @grid = Array.new(4) { Array.new(4)} 
  end

  def random_card
    potential_card = @@values.keys.sample
    if @@values[potential_card] > 0 
    @@values[potential_card] -= 1
    return potential_card 
    else 
    random_card 
    end
  end

  def reveal guessed_pos 
    row, col = guessed_pos 
    card = @grid[row][col] 
    card.face_up = true 
    render 
  end

  def [] pos  #TODO fix and use this
    row, col = pos 
    @grid[row][col] 
  end

  def []= pos, value 
    row, col = pos 
    @grid[row][col] = value 
  end

  def populate
    length = @grid[0].length 
    (0...length).each do |s1|
      (0...length).each do |s2|
        card = Card.new(random_card)
        position = [s1,s2]
        value = card 
        self[position]= value    
      end
    end
  end

  def render 
    p " 0 1 2 3"  
    (0..3).each do |row| 
      i = 0
      positions = []
      line_print = ""
      line_print += row.to_s
      while i <= 3
        positions << @grid[row][i]
        i += 1
      end 
      positions.each do |card| 
        if card.face_up == true 
          line_print += card.face_value.to_s
          line_print += " "
        else
         line_print += "  "
        end 
      end
      p line_print 
    end
  end  

  def won?(guesses) 
    guess_1 = guesses[0]
    guess_2 = guesses[1]
    row_1, col_1 = guess_1 
    row_2, col_2 = guess_2 
    card_1 = @grid[row_1][col_1] 
    card_2 = @grid[row_2][col_2] 
    return true if card_1.face_value == card_2.face_value 
    card_1.hide
    card_2.hide 
    false 
  end

end

  

 