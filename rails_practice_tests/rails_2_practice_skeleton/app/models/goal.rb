class Goal < ApplicationRecord
  validates :name, presence: true, allow_nil: false
  validates :details, presence: true, allow_nil: false
  validates :user_id, presence: true, allow_nil: false
  # validates :status, presence: true, allow_nil: false
   validates :status, inclusion: { in: [true,false]}

  belongs_to :user

end
