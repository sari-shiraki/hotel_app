class HotelsController < ApplicationController
  def index
    @hotels = Hotel.all
    
  end
  
  def new
    @hotel = Hotel.new
  end  
  
  def create
    @hotel = Hotel.new(hotel_params)
    if @hotel.save
      flash[:notice] = "Room was successfully created."
      redirect_to :hotels
    else
      render :new
    end  
  end 
  
  def show
    @hotel = Hotel.find(params[:id])
  end  
  
  def destroy
    @hotel = Hotel.find(params[:id])
    @hotel.destroy
    redirect_to :hotels
  end  
  
  private
  def hotel_params
    params.require(:hotel).permit(:room_name, :introduction, :price, :adress, userimage)
  end  
end
