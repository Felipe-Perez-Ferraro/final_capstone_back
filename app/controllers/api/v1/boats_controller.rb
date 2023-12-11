class Api::V1::BoatsController < ApplicationController

    def index
        boats = Boat.all
        render json: boats
    end

    def show
        boat = Boat.find(params[:id])
        render json: boat
    end

end
