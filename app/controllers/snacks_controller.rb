class SnacksController < ApplicationController
  def index
    @snacks = Snack.all
    render json: @snacks.as_json
  end

  def create
    @snacks = Snack.create(
      name: params[:name],
      brand: params[:brand],
      user_id: params[:user_id],
      snack_image: params[:snack_image],
    )
    render json: @snacks.as_json
  end

  def show
    @snack = Snack.find_by(id: params[:id])
    render json: @snack.as_json
  end

  def update
    @snack = Snack.find_by(id: params[:id])
    @snack.update(
      name: params[:name] || @snack.name,
      brand: params[:brand] || @snack.brand,
      user_id: params[:user_id] || @snack.user_id,
      snack_image: params[:snack_image] || @snack.snack_image,
    )
    render json: @snack.as_json
  end

  def destroy
    @snack = Snack.find_by(id: params[:id])
    @snack.destroy
    render json: { message: "Snack destroyed successfully" }
  end
end
