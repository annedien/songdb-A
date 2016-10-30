class SongsController < ApplicationController

#add new songs
  def new
   @song = Song.new
  end

  def create
    @song = Song.create(song_params)
    artist_id = @song.artist_id
    @artist = Artist.find(artist_id)
    @songs = @artist.songs
  end

end
