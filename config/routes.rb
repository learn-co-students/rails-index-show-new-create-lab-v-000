Rails.application.routes.draw do
  resources :coupons, only: [:index, :new, :show, :create]
  # get 'coupons/new' to: 'coupons#create', as: new_coupon_path
end
