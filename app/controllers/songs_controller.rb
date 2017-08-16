class SongsController < ApplicationController

  def index
    @songs = Song.all
    render json: @songs
  end

  def new
    @song = Song.new
  end

  def create
     @song = Song.new(song_params)
     if @song.save!
      render json: @song
    else
      render json: @song.errors, status: :unprocessable_entity
    end
  end

  def show
    @song = Song.find(params[:id])
    render json: @song
  end

  private
    def song_params
      params.require(:song).permit(:title, :artist, :album)
    end

end
