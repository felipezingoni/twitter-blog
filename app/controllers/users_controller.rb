class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @users = User.new
  end

  def create
    @users = User.new[user_params]
    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def delete

  end

  def update

  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
