class Api::GuestsController < ApplicationController
  def index
    @guests = Guest.all
    render :index
  end

  def show
    @guest = Guest.find_by(id: params[:id])
    # g = {}
    # g[:age] = @guest.age
    # g[:name] = @guest.name
    # g[:favorite_color] = @guest.favorite_color    
    render :show
    #passed spec, now rendering too much info
    # render json: g
  end
end
