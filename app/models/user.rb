class User < ApplicationRecord
    has_many :user_cars
    has_many :cars, through: :user_cars

    validates :firstName, presence: true
    validates :lastName, presence: true
    validates :email, presence: true
    validates :password, presence: true
end
