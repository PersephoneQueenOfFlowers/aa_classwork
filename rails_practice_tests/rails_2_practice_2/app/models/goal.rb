class Goal < ApplicationRecord

  validates :name, presence: true, uniqueness: true
  validates :details, presence: true 
  validates :status, inclusion: { in: [true,false]} 

  belongs_to :user 

  

end
