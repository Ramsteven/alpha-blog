class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:name, :description, :twitter, :facebook, :instagram))
    if @user.save
      flash[:nortice] = "User was created succesfully"
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(params.require(:user).permit(:title, :description, :twitter, :facebook, :instagram))
      flash[:notice] = "User was updated successfully."
      redirect_to @user
    else
      render 'edit'
    end
  end
end
