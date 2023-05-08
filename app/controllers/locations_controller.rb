class LocationsController < ApplicationController
  def index
    @locations = Location.all
    render json: @locations.as_json
  end

  def create
    @locations = Location.create(
      name: params[:name],
      snack_id: params[:snack_id],
      address: params[:address],
    )
    render json: @locations.as_json
  end

  def show
    @location = Location.find_by(id: params[:id])
    render json: @location.as_json
  end

  def update
    @location = Location.find_by(id: params[:id])
    @location.update(
      name: params[:name] || @location.name,
      snack_id: params[:snack_id] || @location.snack_id,
      address: params[:address] || @location.address,
    )
    render json: @location.as_json
  end

  def destroy
    @location = Location.find_by(id: params[:id])
    @location.destroy
    render json: { message: "Location destroyed successfully" }
  end
end
