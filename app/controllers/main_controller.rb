class MainController < ApplicationController
  def index
    flash[:notice] = "Welcome to Scheduled Tweets"
    flash[:alert] = "Something went wrong"
  end
end
