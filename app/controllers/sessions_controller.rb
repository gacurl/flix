class SessionsController < ApplicationController
  
  def new

  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = :user_id
      redirect_to user, notice: "Welcome back, #{user.name.capitalize}!"
    else
      flash.now[:alert] = "Invalid email/password combination"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy

  end
end