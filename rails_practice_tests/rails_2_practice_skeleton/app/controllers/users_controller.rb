class UsersController < ApplicationController
  # before_action :require_logged_in, only: [:index, :show]
   before_action :require_logged_in, except: [:create, :new]

  def new 
    @user = User.new
    render :new
  end

  def index 
    @users = User.all
    # render json: users
    render :index
  end

  def show 
    @user = User.find(params[:id])
    # redirect_to user_url(@user) #with this commented, the test to  show page of the specified user should not work. it works.
    render :show 
  end

  def create
    @user = User.new(user_params)
    
    if @user.save
      #login user if save successful 
      # redirect_to "/users/#{user.id}"
      login(@user) #from applicationcontroller 
      redirect_to users_url
      # render json: user
    else
      #if unsuccessful, render :new 
      #use AR for errors
      # flash[:errors] = @user.errors.full_messages #only use flash with a redirect- persists for one extra cycle
      flash[:errors] = @user.errors.full_messages
      #flash.now-> for this cycle only 
      #:errors is banana-able -> just make sure it matches in application.html.erb
      render :new

      # render json: user.errors.full_messages, status: 422
    end

  end

  def user_params 
    params.require(:user).permit(:password,:username)
  end

end
