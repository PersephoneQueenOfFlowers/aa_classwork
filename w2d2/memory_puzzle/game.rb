require_relative "./board.rb"
require 'byebug'

class Game 

  def initialize  
    @board = Board.new
    # self.play
  end

  def play 
    won = false
    @board.populate 
    while won == false 
      @board.render 
      guesses = []
      2.times do 
        guesses << get_guess 
        @board.reveal guesses[-1]
      end
      won = @board.won?(guesses)
    end
    debugger 
    s = "s"
    return true  
  end

  def get_guess  
    p "please enter two numbers in the format `row col`"
    input = gets.chomp 
    input_arr = input.split(" ")
    if input_arr.length != 2 
      raise "Sorry, you need to enter two numbers" 
    end
    return_arr = []
    input_arr.each do |ele|  
      if ele.count("a-zA-Z") > 0
        raise "Sorry, you need to enter numbers" 
      else   
        return_arr << ele.to_i
      end
    end
    return return_arr
  end  

end