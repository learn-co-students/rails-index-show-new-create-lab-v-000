Rails.application.routes.draw do
  resources :coupons, only: [:index, :create]
  get '/coupon/new', to: 'coupons#new', as: 'new_coupon'
  get '/coupon/:id', to: 'coupons#show', as: 'coupon'
end
