Rails.application.routes.draw do
  resources :coupons, only: [:create, :index, :new, :show]
end
