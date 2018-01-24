Rails.application.routes.draw do
  resources :coupons, only: [:index, :new, :show, :create]
end
