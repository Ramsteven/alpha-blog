class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end
  
  def new
  end

  def create
    @user = User.new(params.require(:user).permit(:name, :description, :twitter, :facebook, :instagram))
    @user.save
    redirect_to user_path(@user)
  end
end
