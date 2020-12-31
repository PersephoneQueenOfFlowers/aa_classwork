class Cat < ApplicationRecord
  COLORS = [:orange, :grey, :blue, :tabby, :white, :black]

  validates :color, presence: true

  def age
    #now = Date.today
    #age = now - self.birth_date  
  end  

  
end
