class UsersController < ApplicationController
  before_action :set_user!, only: [:show, :edit, :update, :destroy]

  def new
    redirect_if_logged_in
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
  end

  def show
    @user = User.find_by(id: params[:id])
    redirect_to root_path unless @user #maybe use a 404 in future
  end

  def update
  end

  def destroy
    @user.destroy
    redirect_to root_path
  end

  private

  def set_user!
    @user = User.find_by(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :email)
  end
end
