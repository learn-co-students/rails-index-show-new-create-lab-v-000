Rails.application.routes.draw do
  resources :coupons, except: [:edit, :update, :destroy]
end
