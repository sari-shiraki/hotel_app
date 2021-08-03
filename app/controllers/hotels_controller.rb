class HotelsController < ApplicationController
  def index
    @hotels = Hotel.all
    
  end
  
  def new
    @hotel = Hotel.new
  end  
  
  def create
    @hotel = Hotel.new(hotel_params)
    @hotel.user_id = @current_user
    if @hotel.save
      binding.pry
      flash[:notice] = "Room was successfully created."
      redirect_to :hotels
    else
      render :new
    end  
  end 
  
  def show
    @hotel = Hotel.find(params[:id])
    @user = User.find_by(id: @hotel.user_id)
  end  
  
  def destroy
    @hotel = Hotel.find(params[:id])
    @hotel.destroy
    redirect_to :hotels
  end  
  
  private
  def hotel_params
    params.require(:hotel).permit(:room_name, :introduction, :price, :adress, :image)
  end  
end
