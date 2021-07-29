class RoomsController < ApplicationController
  def index
    @room = Room.all
  end
  
  def new
    @room = Room.new
  end

  def create
    @room = Room.create params.permit(:image)
    redirect_to rooms_path
  end
end
