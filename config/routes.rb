Rails.application.routes.draw do

  resources :coupons, only: [:index, :create, :new,]

  get '/coupons/:id' => 'coupons#show', :as => 'coupon'
end
