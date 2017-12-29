Rails.application.routes.draw do
  resources :coupons, only: [:index, :show, :new, :create]
  get '/coupon/:id', to: 'coupon#show', as: 'coupon'
end
