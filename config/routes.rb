Rails.application.routes.draw do
  resources :coupons, only: [:index, :new, :create, :show]
  post '/coupons', to: 'coupons#create', as: 'create_coupon'
end
