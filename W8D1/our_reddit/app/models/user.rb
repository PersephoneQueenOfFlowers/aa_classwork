class User < ApplicationRecord
  attr_reader :password 

  validates :username, :password_digest, :session_token, presence: true
  validates :username, uniqueness: true 
  validates :password, length: {minimum: 6, allow_nil: true}

  after_initialize :ensure_session_token 

  has_many :posts, as :postable


#   class Picture < ApplicationRecord
#   belongs_to :imageable, polymorphic: true
# end

# class Employee < ApplicationRecord
#   has_many :pictures, as: :imageable
# end

# class Product < ApplicationRecord
#   has_many :pictures, as: :imageable
# end








  def self.find_by_credentials(username, password)
    user = User.find_by(username: username)
    if user && user.is_password?(password)
      user 
    else
      nil 
    end
  end

  def password=(pw)
    @password = pw 
    self.password_digest = BCrypt::Password.create(pw)
  end

  def is_password?(pw)
    BCrypt::Password.new(self.password_digest).is_password?(pw)
  end

  def reset_session_token!
    self.session_token = SecureRandom.base64
    self.save! 
    self.session_token
  end

  def ensure_session_token
    self.session_token ||= SecureRandom.base64
  end

end
