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
    @locations = Location.find_by(id: params[:id])
    render json: @locations.as_json
  end
end
