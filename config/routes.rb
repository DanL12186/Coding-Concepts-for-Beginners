Rails.application.routes.draw do

  resources :users
  resources :readings
  root "application#home"
end
