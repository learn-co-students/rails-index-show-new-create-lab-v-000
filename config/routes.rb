Rails.application.routes.draw do
  resources :coupons, only: [:index, :new, :show, :create]
  
 
  # get "/coupons", to: "coupons#index"
  # get "/coupons/new", to: "coupons#new", as: "new_coupon"
  # get "/coupon/:id", to: "coupons#show", as: "coupon"

  # post "/coupons", to: "coupons#create"
end
