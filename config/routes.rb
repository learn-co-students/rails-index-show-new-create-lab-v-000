Rails.application.routes.draw do
  get 'coupons' => 'coupons#index'
  get 'coupon/:id' => 'coupons#show', as: "coupon"
  get 'coupons/new' => 'coupons#new', as: "new_coupon"
  post 'coupons' => 'coupons#create'
end
