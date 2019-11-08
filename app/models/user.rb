class User < ApplicationRecord
    has_many :user_cars
    has_many :cars, through: :user_cars
end
