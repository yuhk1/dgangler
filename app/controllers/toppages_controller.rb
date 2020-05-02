class ToppagesController < ApplicationController
  
  def index
    if logged_in?
      @fish = current_user.fishs.build  # form_with 用
      @fishs = current_user.fishs.order(id: :desc).page(params[:page])
    end
  end
end
