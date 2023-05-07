class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
    render json: @reviews.as_json
  end

  def create
    @reviews = Review.create(
      snack_id: params[:snack_id],
      user_id: params[:user_id],
      note: params[:note],
      snack_rate: params[:snack_rate],
    )
    render json: @reviews.as_json
  end
end
