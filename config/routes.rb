Rails.application.routes.draw do
  resources :coupons, only:[:show, :index, :new, :create]
end
