class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
    @songs = @artist.songs
    @song = Song.new
  end

  # filtering artists
  def order_by_name
    @artists = Artist.order_by_name
    render action: :index
  end

  def order_by_date
    @artists = Artist.order_by_date
    render action: :index
  end
end
