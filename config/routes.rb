Rails.application.routes.draw do
  resources :reviews
  resources :reviews, only: [:new, :create, :show, :edit, :update]
  resources :movies, only: [:show, :index]
  resources :roles, only: [:show]
  resources :actors, only: [:show, :index]

  resources :users, only: [:show, :new, :create,:edit,:update] do
    resources :reviews, only: [:destroy] # delete
  end

  get "signup", to: "users#new", as: "signup"
  get "login", to: "sessions#new", as: "login"
  post "sessions", to: "sessions#create", as: "sessions"
  delete "sessions", to: "sessions#destroy" #logout
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
