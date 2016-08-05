# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment', __FILE__)

  resources :coupons, only: [:index, :new, :create]
  get '/show/:id', to: 'coupons#show', as: 'show'


run Rails.application
