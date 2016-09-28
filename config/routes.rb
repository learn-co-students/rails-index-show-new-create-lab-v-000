Rails.application.routes.draw do

  resources :coupons, only: [:new,:index,:create, :show]

end
