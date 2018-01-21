Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  resources :coupons, only: [:index, :show, :new, :create]

   #root 'coupons#index'

   #get 'coupons/:id' => 'coupons#show'

end
