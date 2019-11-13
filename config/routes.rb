Rails.application.routes.draw do
  resources :cars, only: [:index, :create]
  resources :users, only: [:index, :create]
  resources :user_cars, only: [:index, :create, :destroy]
  post '/login', to: 'application#login'
  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
