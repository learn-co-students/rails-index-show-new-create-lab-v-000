Rails.application.routes.draw do
  resources :coupons, only: [:index, :create, :new, :show]
end
