class Comment < ApplicationRecord
    validates :body, presence: true

    belongs_to :author,
      primary_key: :id,
      foreign_key: :author_id,
      class_name: :User 

    belongs_to :blog,
      primary_key: :id,
      foreign_key: :blog_id,
      class_name: :Blog 

end
