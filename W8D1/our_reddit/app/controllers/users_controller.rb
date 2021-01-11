class UsersController < ApplicationController

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

  def edit

  end

  def show
    @user = User.find(params[:id])
    render :show
  end

  def update

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