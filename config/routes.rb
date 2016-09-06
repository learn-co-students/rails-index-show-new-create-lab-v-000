Rails.application.routes.draw do
  resources :coupons, only: [:index, :create]

  # get '/coupons' => 'coupons#index'
  # get '/coupons/create' => 'coupons#create' # needs to go above /:id
  get '/coupons/:id' => 'coupons#show', as: :coupon
end

# Prefix Verb URI Pattern               Controller#Action
#        coupons GET  /coupons(.:format)        coupons#index
#                GET  /coupons/:id(.:format)    coupons#show
# coupons_create GET  /coupons/create(.:format) coupons#create
