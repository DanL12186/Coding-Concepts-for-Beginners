Rails.application.routes.draw do
  root "application#home"

  resources :users
  resources :readings
  resources :sessions, only: [:new, :create]

  delete "/logout" => "sessions#destroy"
end
