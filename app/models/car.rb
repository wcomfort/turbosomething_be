class Car < ApplicationRecord
    has_many :user_cars
    has_many :users, through: :user_cars

    validates :picture, presence: true
    validates :make, presence: true
    validates :model, presence: true
    validates :price, presence: true
    validates :hp, presence: true
    validates :tq, presence: true
    validates :des, presence: true
    validates :link, presence: true
end
