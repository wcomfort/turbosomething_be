class CarsController < ApplicationController
    def index
        cars = Car.all 
        render json: cars
    end

    def create
        car = Car.create(carparams)
        render json: car
    end

    private

    def carparams
        params.require(:car).permit(:picture, :make, :model, :price, :hp, :tq, :des, :link)
    end
end
