class Api::V1::BoatsController < ApplicationController

    def show
        boat = Boat.find(params[:id])
        render json: boat
    end
end
