class UsersController < ApplicationController

  before_action :require_logged_in, except: [:create, :new]

  def new 
    @user = User.new # empty user object
    render :new 
  end

  def index 
    @users = User.all 

    render :index 
  end

  def show 
    @user = User.find(params[:id])

    render :show 
  end

  def create 

    @user = User.new(user_params)
 
    if @user.save 
      login(@user)
      redirect_to users_url

    else
      flash[:errors] = @user.errors.full_messages
      render :new 
    end

  end

  def user_params 
    params.require(:user).permit(:password, :username)
  end


end
