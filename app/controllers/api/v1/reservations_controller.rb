class Api::V1::ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all

    render json: @reservations
  end

  def create 
    @reservation = Reservation.new(reservations_params)

    if @reservation.save
      render json: @reservation, status: :created, location: api_v1_reservation_url(@reservation)
    else
      render json: { errors: @reservation.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def reservations_params
    params.require(:reservation).permit(:username, :city, :date, :boat_id)
  end
end
