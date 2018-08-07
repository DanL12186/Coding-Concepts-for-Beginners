class ReadingsController < ApplicationController
  before_action :set_reading!, only: [:show, :edit, :update, :destroy]

  def new
    redirect_to user_path(current_user) unless current_user.id == 1
    @reading = Reading.new
  end

  def edit
  end

  def create
    @reading = Reading.new(reading_params)
    @reading.save ? (redirect_to reading_path(@reading)) : (render :new)
  end

  private

  def set_reading!
    @reading = Reading.find_by(params[:id])
  end

  def reading_params
    params.require(:reading).permit(:title, :subtitle, :category_id, :summary, :content)
  end

end
