class Blog < ApplicationRecord
  validates :body, presence: true
  validates :title, presence: true
  validates :title, uniqueness: {scope: :author_id}

  belongs_to :author,
    primary_key: :id,
    foreign_key: :author_id,
    class_name: :User 

  has_many :comments,
    primary_key: :id,
    foreign_key: :author_id,
    class_name: :Comment, 
    dependent: :destroy   


end
