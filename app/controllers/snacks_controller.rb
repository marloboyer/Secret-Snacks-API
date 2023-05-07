class SnacksController < ApplicationController
  def index
    @snacks = Snack.all
    render json: @snacks.as_json
  end

  def create
    @snack = Snack.create(
      name: params[:name],
      brand: params[:brand],
      user_id: params[:user_id],
      snack_image: params[:snack_image],
    )
    render json: @snacks.as_json
  end
end
