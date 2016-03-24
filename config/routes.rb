Rails.application.routes.draw do
  resources :coupons, only: [:index, :create, :show, :new]
end
