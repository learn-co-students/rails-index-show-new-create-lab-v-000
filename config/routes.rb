Rails.application.routes.draw do
  resources :coupons, only: [:index, :create, :new]
  get '/coupon/:id', to: 'coupons#show', as: 'coupon'
end
