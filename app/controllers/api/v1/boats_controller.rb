class Api::V1::BoatsController < ApplicationController
  # GET /api/v1/boats
  def index
    boats = Boat.all
    render json: { status: 'success', data: boats }, status: :ok
  rescue StandardError => e
    render json: { status: 'error', message: e.message }, status: :internal_server_error
  end

  # GET /api/v1/boats/:id
  def show
    boat = Boat.find(params[:id])
    render json: { status: 'success', data: boat }, status: :ok
  rescue ActiveRecord::RecordNotFound
    render json: { status: 'error', message: 'Boat not found' }, status: :not_found
  rescue StandardError => e
    render json: { status: 'error', message: e.message }, status: :internal_server_error
  end

  # DELETE /api/v1/boats/:id
  def destroy
    boat = Boat.find(params[:id])
    boat.destroy!
  end
end
