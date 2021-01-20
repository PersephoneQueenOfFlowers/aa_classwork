class ArtworksController < ApplicationController

  def index
    artworks_all = Artwork.all
    render json: artworks_all
  end

  def create
    artwork = Artwork.new( artwork_params )
   
    if artwork.save!  
      render json: artwork
    else  
      render json: artwork.errors.full_messages, status: :unprocessable_entity
    end

  end

  def update

    artwork = Artwork.find_by(artwork_params)

    success = artwork.update( artwork_params )
    if success
      render json: artwork 
    else
      render json: artwork.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    artwork = Artwork.find_by(artwork_params)
    render json: artwork
  end

  def destroy 
    debugger
    artwork = Artwork.find_by(artwork_params)
    debugger
    artwork.destroy 
    render json: artwork 
  end

  private
  def artwork_params
    self.params[:artwork].permit( :id, :image_url, :title, :artist_id )
  end

end