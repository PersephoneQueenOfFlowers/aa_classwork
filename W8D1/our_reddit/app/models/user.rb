class User < ApplicationRecord


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
