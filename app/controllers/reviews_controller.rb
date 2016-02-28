class ReviewsController < ApplicationController
  before_action :set_area
  def index
    render json:{
      reviews: @area.reviews.order(id: :desc)
    }
  end


  def new
    render json:{task: @area.reviews.new}
  end

  private

  def set_area
    @area=Area.find(params[:area_id])
  end
  def review_params
    params.require(:review).permit(:story, :writer, :area_id)
  end
end
