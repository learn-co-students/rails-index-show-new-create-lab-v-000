Rails.application.routes.draw do

  resources :coupons, only: [:index, :show, :new, :create]
  #get '/coupon/:id', to: 'coupons#show', as: 'coupon'

end
