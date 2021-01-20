class Band < ApplicationRecord
  validates :name, allow_nil: false, uniqueness: true 

  has_many :albums 
  
end
