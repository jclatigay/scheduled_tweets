class MainController < ApplicationController
  def index
    flash.now[:notice] = "Welcome to Scheduled Tweets"
    flash.now[:alert] = "Something went wrong"

    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    end
  end
end
