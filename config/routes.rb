Rails.application.routes.draw do

  resources :users
  resources :readings
  resources :sessions, only: [:new, :create]
  root "application#home"
end
