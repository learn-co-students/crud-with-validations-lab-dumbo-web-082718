class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def edit
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

end
