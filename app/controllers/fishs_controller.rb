class FishsController < ApplicationController
  before_action :require_user_logged_in
  before_action :correct_user, only: [:destroy]
  
  def create
    @fish = current_user.fishs.build(fish_params)
    if @fish.save
      flash[:success] = "Successfully posted."
      redirect_to root_url
    else
      @fishs = current_user.fishs.order(id: :desc).page(params[:page])
      flash.now[:danger] = "Posting failed."
      render 'toppages/index'
    end
  end

  def destroy
    @fish.destroy
    flash[:success] = "It has been deleted."
    redirect_back(fallback_location: root_path)
  end
  
  private

  def fish_params
    params.require(:fish).permit(:day, :address, :tackle, :kind, :number)
  end
  
  def correct_user
    @fish = current_user.fishs.find_by(id: params[:id])
    unless @fish
      redirect_to root_url
    end
  end
end
