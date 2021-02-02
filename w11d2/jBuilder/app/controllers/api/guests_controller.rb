class Api::GuestsController < ApplicationController
  def index
    @guests = Guest.all
    # @gifts = Gift.find(:id)
    render :index
  end

  def show
    @guest = Guest.find_by(id: params[:id])   
    render :show
    #passed spec, now rendering too much info
    # render json: g
  end
end
