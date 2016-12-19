Rails.application.routes.draw do
  # Create routes for index, show, new, and create
  resources :coupons, only: [:index, :show, :new, :create]
end
