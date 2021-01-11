class UsersController < ApplicationController

  before_action :require_logged_in

  def index
    @users = User.all
    render :index
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

  def new
    @user = User.new
    render :new
  end

  
  def show
    @user = User.find(params[:id])
    render :show
  end

  #this is the call
  def edit
    user = User.find(:id)
    #we get the current user and render their show page
    redirect_to user_url(user)
  end

  #this is the form delivery from the show page
  def update
    @user = User.find(:id)

    if user
     @user.update(username: params[:user][:username],
                  password: params[:user][:password])
      redirect_to users_url
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to user_url(user)
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end

# subs#index
# subs#create
# subs#new
# subs#edit
# subs#show
# subs#update