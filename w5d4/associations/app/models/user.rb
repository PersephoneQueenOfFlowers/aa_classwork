# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord

    belongs_to :enrolled,
        primary_key: :id,
        foreign_key: :course_id,
        class_name: :Enrollment

end
