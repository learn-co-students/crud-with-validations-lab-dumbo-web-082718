class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def edit
    
  end

  def new
  end

end
