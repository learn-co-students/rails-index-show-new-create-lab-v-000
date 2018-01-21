Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  get 'coupons' => 'coupons#index', as: :coupons
  get 'coupons/new' => 'coupons#new', as: :new_coupon
  get 'coupons/:id' => 'coupons#show', as: :coupon
  post 'coupons' => 'coupons#create'

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

end
