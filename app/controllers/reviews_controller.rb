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

  def create
    review=Review.new(review_params)
    review.area=@area

    if review.save
    render json:{review: review}
    else
      render json: {
        message: "Sorry, review could not be created",
        errors: review.errors
      }
    end
  end

  private

  def set_area
    @area=Area.find(params[:area_id])
  end
  def review_params
    params.require(:review).permit(:story, :writer, :area_id)
  end
end
