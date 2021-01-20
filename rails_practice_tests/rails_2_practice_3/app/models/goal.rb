class Goal < ApplicationRecord
  validates :name, presence: true, uniqueness: true 
  validates :details, presence: true
  # name, details, user_id, status
  validates :status, inclusion: {in: [ true, false ]}
  

  belongs_to :user 
end
