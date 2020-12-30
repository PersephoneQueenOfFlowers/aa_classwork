class UsersController < ApplicationController

  # validates :username, presence: true
  
  def index
    users_all = User.select(:username)
    render json: users_all
  end

  def create
    params
    user = User.new( user_params )
   
    if user.save!  
      render json: user
    else  
      render json: user.errors.full_messages, status: :unprocessable_entity
    end

  end

  def update

    user = User.find(params[:id])

    success = user.update( user_params )
    if success
      render json: user 
    else
      render json: errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def destroy 
    user = User.find(params[:id])
    user.destroy 
    render json: user 
  end

  private
  def user_params
    self.params[:user].permit( :username )
  end

end
