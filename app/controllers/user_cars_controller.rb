class UserCarsController < ApplicationController
    def index
        favs = UserCar.all 
        render json: favs
    end

    def create
        fav = UserCar.create(favparams)
        render json: fav
    end

    private

    def favparams
        params.require(:user_car).permit(:user_id, :car_id)
    end
end
