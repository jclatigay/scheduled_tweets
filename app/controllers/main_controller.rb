class MainController < ApplicationController
  def index
    flash.now[:notice] = "Welcome to Scheduled Tweets"
    flash.now[:alert] = "Something went wrong"
  end
end
