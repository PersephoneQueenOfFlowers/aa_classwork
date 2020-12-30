class UsersController < ApplicationController
  def index
    debugger
    users_all = User.select(:name,:email)
    render json: users_all
  end

  def create

    user = User.new(params.require(:user).permit( [':name'],[':email'] ) )
   debugger
    user[:name] = params[:user][':name']
    user[:email] = params[:user][':email']
    user.save!

    render json: user
  end

  def show
    render json: params
  end

end
