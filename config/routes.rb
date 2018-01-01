Rails.application.routes.draw do
  resources :coupons, only: [:index, :show, :new, :create]

  get '/coupons/:id', to: 'coupons#show'
end
