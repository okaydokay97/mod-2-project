Rails.application.routes.draw do
  resources :users
  resources :reviews
  resources :movies, only: [:show, :index]
  resources :roles, only: [:show]
  resources :actors, only: [:show, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
