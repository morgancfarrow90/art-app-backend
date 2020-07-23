class Api::V1::ArtworksController < ApplicationController

  def index
    artworks = Artwork.all
    render json: ArtworkSerializer.new(artworks)
  end

  def create
    artwork= Artwork.new(artwork_params)
    if artwork.save
      render json: artwork, status: :accepted
    else
      render json: {errors: artwork.errors.full_messages}, status: :unprocessible_entity
    end
  end

  private

  def artwork_params
    params.require(artwork).permit(:title, :image_url, :year, :description, :likes, :artist_id)
  end

end
