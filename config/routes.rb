Rails.application.routes.draw do

  resources :coupons, only: [:index, :new, :create]
  get '/show/:id', to: 'coupons#show', as: 'coupon'

end