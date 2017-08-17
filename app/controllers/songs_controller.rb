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
      render json: @song, status: :created
    else
      render json: @song.errors, status: :unprocessable_entity
    end
  end

  def show
    @song = Song.find(params[:id])
    render json: @song
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params)
    render json: @song
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    render json: @songs
  end

  private
    def song_params
      params.require(:song).permit(:title, :artist, :album)
    end

end
