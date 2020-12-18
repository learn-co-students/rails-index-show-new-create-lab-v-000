Rails.application.routes.draw do
  resources :coupons, only: [:index, :new, :create]

  get '/coupon/:id' => 'coupons#show', :as => :coupon
end
