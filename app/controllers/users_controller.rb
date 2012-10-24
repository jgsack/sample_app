class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome the Sample App!"
      redirect_to @user
    else
      flash[:error] = "Sorry, could not save."
      render 'new'
    end
  end
end
