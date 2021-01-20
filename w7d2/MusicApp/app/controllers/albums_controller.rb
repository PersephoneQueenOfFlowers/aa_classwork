class AlbumsController < ApplicationController

  def index
    
  end

  def create  
    album = Album.new(album_params)
    album[:band_id] = params[:band_id]
    if album.save
      redirect_to band_url(params[:band_id])
    else 
      flash[:errors] = ['bad details. Try again.']
      redirect_to band_url(params[:band_id])
    end
  end

  def new
    render :new 
  end

  def edit

  end

  def show 
    render :show
  end

  def update 

  end

  def destroy
    
  end

  def album_params 
    params.require(:album).permit(:title, :live, :year )
  end
end
