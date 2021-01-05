require 'bcrypt'

class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true, null: false
  validates :session_token, presence: true, null: false, uniqueness: true
  validates_presence_of :password_digest, message: "Password can't be blank"
  validates :password, length: {minimum: 6}, allow_nil: true

  def password
    debugger
    @password
  end

  after_initialize :ensure_session_token
  
  def self.generate_session_token
    SecureRandom.base64
  end

  def reset_session_token
    self.session_token = User.generate_session_token
    self.save!
    debugger
    self.session_token 
  end

  def password=(pw)
    self.password_digest = BCrypt::Password.create(pw)
    @password = pw
  end

  def is_password?(pw)
    BCrypt::Password.new(password_digest).is_password?(pw)
  end

  def find_by_credentials(username, password)
    user = User.find_by(
      username: username,
      password: password
    )

    if user && user.is_password?(pw)
      user
    else
      nil
    end

  end

  private

  def ensure_session_token
    debugger
    self.session_token ||= SecureRandom.base64
  end

  #     mnemonic device for remembering Auth methods
  # S self.find_by...
  # P password=...
  # I is_password?...
  # R reset_session_token...
  # E ensure_session_token...
end
