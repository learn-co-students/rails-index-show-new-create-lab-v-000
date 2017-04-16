Rails.application.routes.draw do
  resources :coupons, only: [:index, :new, :create]
  get '/coupons/:id' => 'coupons#show', as: 'coupon'
end
