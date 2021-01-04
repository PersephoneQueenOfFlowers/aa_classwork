class UsersController < ApplicationController
  def new 
    render :new
  end

  def create 
    #set session token and password_digest here
    # set session_token
    #set password_digest
    # create user with those params

    @user = User.new(user_params)
    if @user.save 


    else

    end
  end

  private 
  def user_params
    params.require(@user).permit(:username,:session_token, :password, :password_digest)
  end
end
