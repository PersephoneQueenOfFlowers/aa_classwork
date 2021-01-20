class User < ApplicationRecord
  validates :username, presence: true, allow_nil: false, uniqueness: true 
  # validates_uniqueness_of :username, :case_sensitive => true
  # validates :age, :political_affiliation, :password_digest, presence: true 
  validates :password_digest, presence: true, allow_nil: false 
  validates :password, length: { minimum: 6 }, allow_nil: true 

  has_many :goals,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :Goal

  after_initialize :ensure_session_token

  attr_reader :password 

  def self.find_by_credentials(username, pw)
    user = User.find_by(username: username)

    if user && user.is_password?(pw) #helper method we will write 
      user 
      #if the username is found and passwords match
    else 
      nil
    end
  end

  def is_password?(pw) #not recursion 
    BCrypt::Password.new(self.password_digest).is_password?(pw)
    #create a new instance using digest from db  this is_pw? is BCrypt's method 
    #returns a boolean
  end

  def password=(pw)
    self.password_digest = BCrypt::Password.create(pw)

    @password = pw 
  end

  def reset_session_token! 
    self.session_token = SecureRandom::urlsafe_base64 
    self.save! 
    self.session_token 
  end

  def ensure_session_token
    self.session_token ||= SecureRandom::urlsafe_base64 
  end

end
