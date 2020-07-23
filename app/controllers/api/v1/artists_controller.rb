class Api::V1::ArtistsController < ApplicationController

  def index
    artists = Artist.all
    render json: ArtistSerializer.new(artists)
  end

  def create
    artist= Artist.new(artist_params)
    if artist.save
      render json: artist, status: :accepted
    else
      render json: {errors: artist.errors.full_messages}, status: :unprocessible_entity
    end
  end

  private

  def artist_params
    params.require(artist).permit(:name, :biography)
  end

end
