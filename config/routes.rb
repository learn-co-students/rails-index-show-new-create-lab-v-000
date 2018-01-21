Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
   resources :coupons, only: [:index, :show, :new, :create]
   #post '/coupon', to: 'coupons#create'
   #get '/coupons/new', to: 'coupons#new'
end
