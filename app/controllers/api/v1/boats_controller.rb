class Api::V1::BoatsController < ApplicationController

    # GET /api/v1/users/:user_id/boats
  def index
    begin
      boats = Boat.all
      render json: { status: 'success', data: boats }, status: :ok
    rescue StandardError => e
      render json: { status: 'error', message: e.message }, status: :internal_server_error
    end
  end

  # GET /api/v1/users/:user_id/boats/:id
  def show
    begin
      boat = Boat.find(params[:id])
      render json: { status: 'success', data: boat }, status: :ok
    rescue ActiveRecord::RecordNotFound
      render json: { status: 'error', message: 'Boat not found' }, status: :not_found
    rescue StandardError => e
      render json: { status: 'error', message: e.message }, status: :internal_server_error
    end
  end

end
