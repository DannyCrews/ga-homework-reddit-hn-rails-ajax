class UserController < ApplicationController

  def new
    @user = User.new
  end

  # process the signup form
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Welcome to Slacker News." 
      redirect_to root_url
    else
      redirect_to root_url, notice: "Something went wrong. Try again!"
    end
  end

  def destroy
    user_id = current_user.id
    user = User.find(user_id)
    user.destroy
    redirect_to root_url, notice: "Account closed."
  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :password)
  end

end
