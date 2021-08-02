class UsersController < ApplicationController
  
  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
  end  
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to :users
    else
      render :new
    end  
  end
  

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(params.require(:user).permit(:name, :introduction, :image))
      redirect_to edit_user_url
    else
      render :edit
    end  
  end
  
  def destroy
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
  
  
end
