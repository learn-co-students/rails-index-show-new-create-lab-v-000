Rails.application.routes.draw do
  resources :coupons, only: [:new, :create]
end