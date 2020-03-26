class SongsController < ApplicationController

    def index
        @playlists = Playlist.all
        songs = Song.all 
        render json: songs
    end

    def create
        @playlists = Playlist.all
        playlist = @playlists.find_by(id:params[:playlist_id])
        newsong = playlist.songs.create(song_params)
        render json: newsong
    end

    private
    def song_params
        params.permit(:title,:artist,:genre,:cover,:playlist_id)
    end
end
