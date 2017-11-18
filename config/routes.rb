Rails.application.routes.draw do
  # get '/coupons' => 'coupons#index'
  # get '/coupons/new' => 'coupons#new', as: 'new_coupon'
  # get '/coupons/:id' => 'coupons#show', as: 'coupon'
  # post '/coupons' => 'coupons#create'

  resources :coupons, only: [:index, :new, :show, :create]

end
