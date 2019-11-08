Rails.application.routes.draw do
  # resources :user_cars
  resources :cars, only: [:index]
  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
