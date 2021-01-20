class BandsController < ApplicationController

  def new
    @band = Band.new

    render :new
  end

  def index 
    @bands = Band.all 
    render :index
  end

  def show

    @band = Band.find_by(id: params[:id])

    render :show
  end

  def create
    @band = Band.new(name: params[:band][:name])

    if @band.save 
      redirect_to bands_url 
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end

  def destroy 
    band = Band.find_by(band_params)
    if band.destroy 
      redirect_to bands_url 
    else 
      flash[:errors] = ['you have failed. try again, if you dare.']
      redirect_to bands_url 
    end
  end

  def update 
  
    band = Band.find_by(band_params[:name])

    band.name = params[:band][:updated_name]
    if band.save 
      redirect_to bands_url
    else
      flash[:errors] = ['you have failed. try again, if you dare.']
      redirect_to bands_url 
    end
  end

  private

  def band_params
    params.permit(:name, :updated_name)
  end

end
