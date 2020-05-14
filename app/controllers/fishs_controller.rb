class FishsController < ApplicationController
  before_action :require_user_logged_in
  before_action :correct_user, only: [:show, :edit, :update, :destroy]
  
  def index
    @fishs = current_user.fishs
    @data = Fish.pluck(:day, :number)
    #{:created_at => 30, :day => 40}
  end
  
  def show
    
  end

  def new
    @fish = current_user.fishs.build
  end
  
  def create
    @fish = current_user.fishs.build(fish_params)
    if @fish.save
      flash[:success] = "Successfully posted."
      render :show
    else
      @fishs = current_user.fishs.order(id: :desc).page(params[:page])
      flash.now[:danger] = "Posting failed."
      render :new
    end
  end
  
  def edit
  end

  def update
    if @fish.update(fish_params)
      flash[:success] = "Successfully posted."
      redirect_to root_url
    else
      flash.now[:danger] = "Update failed."
      render :edit
    end
  end

  def destroy
    @fish.destroy
    flash[:success] = "It has been deleted."
    redirect_to fishs_url
  end
  
  private

  def fish_params
    params.fetch(:fish, {}).permit(:day, :address, :tackle, :kind, :number)
  end
  
  def correct_user
    @fish = current_user.fishs.find_by(id: params[:id])
    unless @fish
      redirect_to root_url
    end
  end
end
