class SessionsController < ApplicationController
  def create
    @user = User.find_by_credentials(
      params[:user][:email],
      params[:user][:password]
      )

      if @user
        login(@user)
        redirect_to user_url(@user)
      else
        flash.
      end

  end

  def destroy
  end

  def new
  end
end
