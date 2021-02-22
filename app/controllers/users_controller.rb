class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]


  def show
  end

  def index
    @users = User.all
  end
  
  def new
    @user = User.new; @user.socials.build;
  end

  def create
    @user = User.new(params.require(:user).permit(:username, :email, socials_attributes: [:name, :link]))
    if @user.save
      flash[:nortice] = "User was created succesfully"
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @user.update(params.require(:user).permit(:username, :email, socials_attributes: [:id, :name, :link, :_destroy]))
    #if @user.update(user_params)
      flash[:notice] = "User was updated successfully."
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
     @user.destroy
     redirect_to users_path
  end

  private
  def set_user 
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email)
  end 
end
