class Car < ApplicationRecord
    has_many :user_cars
    has_many :users, through: :user_cars
    # def create
    #     Car.create(car_params)
    # end

    # private 

    # def car_params
    #     params.require(:car).permit(:picture, :make, :model, :price, :hp, :tq, :des, :link)
    # end

end
