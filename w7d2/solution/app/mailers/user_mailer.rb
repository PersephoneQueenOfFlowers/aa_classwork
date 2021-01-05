class UserMailer < ApplicationMailer

  default from: 'spagwest@roma.it'

  def welcome_email(user)
    @user = user
    @url  = 'http://localhost:3000/'
    mail(to: "sethschoenfeld@gmail.com", subject: 'You came, you visited, you got mail!!')
  end
  
end
