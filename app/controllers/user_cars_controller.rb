class UserCarsController < ApplicationController
    def index
        favs = UserCar.all 
        render json: favs.to_json(:include => :car)
    end

    def create
        fav = UserCar.create(favparams)
        render json: fav
    end

    def destroy
        fav = UserCar.find(params[:id])
        fav.destroy
        self.index 
    end

    private

    def favparams
        params.require(:user_car).permit(:user_id, :car_id)
    end
end
