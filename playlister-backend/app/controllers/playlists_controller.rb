class PlaylistsController < ApplicationController

    def index
        playlists = Playlist.all 
        render json: playlists
    end

    def create
        playlist = Playlist.create(playlist_params)
        render json: playlist
    end

    private
    def playlist_params
        params.permit(:name)
    end
end
