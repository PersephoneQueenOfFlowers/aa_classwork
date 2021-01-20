class User < ApplicationRecord

  validates :username, presence: true, allow_nil: false, uniqueness: true 
  validates :password_digest, presence: true
  validates :password, length: {minimum: 6}, allow_nil: true 

  has_many :goals,
    foreign_key: :user_id,
    class_name: :Goal 

  attr_reader :password 

  after_initialize :ensure_session_token 

  def self.find_by_credentials(username, password)
    user = User.find_by(username: username)
    if user && user.is_password?(password)
      user 
    else
      nil
    end
  end

  def password=(pw)
    self.password_digest = BCrypt::Password.create(pw)
    @password = pw 
  end

  def is_password?(pw)
    BCrypt::Password.new(password_digest).is_password?(pw)
  end

  def reset_session_token!
    self.session_token = SecureRandom::base64
    self.save! 
    self.session_token 
  end

  def ensure_session_token
    self.session_token ||= SecureRandom::base64 
  end
end
