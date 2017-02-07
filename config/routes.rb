Rails.application.routes.draw do

  #   get 'products/:id' => 'catalog#view'
  resources :coupons, only: [:index, :show, :new, :create]

end
