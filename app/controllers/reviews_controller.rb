class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
    render json: @reviews.as_json(include: :snack)
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

  def show
    @review = Review.find_by(id: params[:id])
    render json: @review.as_json
  end

  def update
    @review = Review.find_by(id: params[:id])
    @review.update(
      snack_id: params[:snack_id] || @review.snack_id,
      user_id: params[:user_id] || @review.user_id,
      note: params[:note] || @review.note,
      snack_rate: params[:snack_rate] || @review.snack_rate,
    )
    render json: @review.as_json
  end

  def destroy
    @review = Review.find_by(id: params[:id])
    @review.destroy
    render json: { message: "Review destroyed successfully" }
  end
end
