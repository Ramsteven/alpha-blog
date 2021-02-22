class SocialsController < ApplicationController

  def new
    @user = User.find(params[:user_id])
    @social = Social.new
  end

  def create
    @user = User.find(params[:user_id]) 
    @social = @user.socials.new(params.require(:social).permit(:name, :link))
    if @social.save
      flash[:notice] = "Social media was created succesfully"
      redirect_to user_path(params["user_id"])
    else
      render 'new'
     end
    end

  def destroy
    @social= Social.find(params[:id])
    @social.destroy
     redirect_to users_path[params[:user_id]]
  end

end
