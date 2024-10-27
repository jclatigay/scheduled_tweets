class PasswordResetsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:email])

    if @user.present?
      # send email
      PasswordMailer.with(user: @user).reset.deliver_later
    else
      redirect_to root_path, notice: "If an account exists with that email, we will send a link to reset your password."
    end
  end
end
