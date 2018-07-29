Rails.application.routes.draw do
  resources :coupons, only: [:index, :new, :create, :show]
  # See how all your routes lay out with "rake routes".
  # The priority is based upon order of creation: first created -> highest priority.
  # get 'request/route', to: 'controller#view', as: 'new_name'
  # get '/coupon/id', to: 'coupons#show', as: 'coupon'

end
