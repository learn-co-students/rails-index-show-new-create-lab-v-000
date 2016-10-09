Rails.application.routes.draw do
  resources :coupons, only: [:show, :new, :create, :index]
end
