Rails.application.routes.draw do
  resources :coupons, only: [:index, :show, :new, :create]
  # , :edit, :update, :destroy
end
