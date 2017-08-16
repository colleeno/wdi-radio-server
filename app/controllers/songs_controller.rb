class SongsController < ApplicationController

  def index
    @songs = Song.all
    # respond_to do |format|
    #   format.html {render :index}
    #   format.json {render json: @songs}
    # end
    render json: @songs
  end

  def show
    @song = Song.find(params[:id])
    render json: @song
  end

end
