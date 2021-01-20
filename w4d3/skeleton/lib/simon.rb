class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1 
    @game_over = false
    @seq = []
  end

  def play
    until @game_over == true
      self.take_turn
    end  
    self.game_over_message
    self.reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    @sequence_length += 1
    if @game_over != true
      self.round_success_message
    end
  end

  def show_sequence
    self.add_random_color 
    @seq.each do |color|
      p color
    end
  end
  
  def require_sequence
    p "please enter the sequence one color at a time"
    sleep 1
    system("clear")
    @seq.each do |color|
      input = gets.chomp
      if input != color 
        game_over_message 
        @game_over = true
        reset_game
      else  
        self.round_success_message
        sleep 1
        system("clear")
      end
    end 
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    "success"
  end

  def game_over_message
    p "game over!"
  end

  def reset_game
    @sequence_length = 1
    @seq = []
    @game_over = false
    play
  end
end

play = Simon.new
play.play
