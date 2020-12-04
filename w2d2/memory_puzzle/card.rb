
class Card 
    attr_accessor :face_up
    attr_reader :face_value

    def initialize(value) 
      @face_value = value
      @face_up = false 
    end

    def hide 
        self.face_up = false
    end
end

# rather than passing in initialize we should set an arr with potential values and return a random value
