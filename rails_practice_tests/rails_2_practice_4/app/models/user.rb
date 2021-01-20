class User < ApplicationRecord
  validates :username, presence: true, allow_nil: false, uniqueness: true 
  validates :password_digest, presence: true, allow_nil: false
  validates :password, presence: true, length: {minimum: 6}, allow_nil: true 

  attr_reader :password 

  after_initialize :ensure_session_token

  has_many :goals

  def self.find_by_credentials(uname, pw)

    user = User.find_by(username: uname)
    if user && user.is_password?(pw)
      user
    else
      nil
    end

  end

  def password=(pw) # assign the password_digest here! 
    self.password_digest = BCrypt::Password.create(pw)
    @password = pw 
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
