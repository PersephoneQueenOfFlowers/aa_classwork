class Api::GuestsController < ApplicationController
  def index
    @guests = Guest.all
    render :index
  end

  def show
    @guest = Guest.find_by(id: params[:id])
    debugger
    render :show
    #passed spec, now rendering too much info
    #render json: @guest
  end
end
