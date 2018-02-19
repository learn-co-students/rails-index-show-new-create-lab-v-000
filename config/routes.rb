Rails.application.routes.draw do
  resources :coupons, only: [:index, :show, :new, :create] #could add :edit & :update actions here

  get 'posts/:id/edit', to: 'posts#edit', as: :edit_post
  put 'posts/:id', to: 'posts#update'
  #not GETting info and not POSTing new record - use PUT for PATCH
end
