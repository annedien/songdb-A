class SongsController < ApplicationController

#add new songs
  def new
    @song = Song.new
  end

  def create
    @songs = @artist.songs
    @song = Song.create(song_params)
    artist_id = @song.artist_id
    @artist = Artist.find(artist_id)
  end

  #delete songs
  def delete
    @song = Song.find(params[:song_id])
  end

  def destroy
    @songs = @artist.songs
    @song = Song.find(params[:id])
    @song.destroy
    artist_id = @song.artist_id
    @artist = Artist.find(artist_id)
  end

  #--------
  private
  def song_params
    params.require(:song).permit(:name, :artist_id)
  end
end