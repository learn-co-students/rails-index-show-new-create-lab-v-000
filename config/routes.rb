Rails.application.routes.draw do
  resources :coupons, only: [:index, :new, :create]
  get '/coupons/:id', to: 'coupons#show', as: 'coupon'
end

# line 2 is the refactored version of the following routes:

# get '/coupons', to: 'coupons#index'
# route is GET request to localhost:3000/coupons, the index page that displays all coupons
# route is mapped to #index controller action (method) in the CouponsController class
# the name of the route is coupons (path is default route name), so
# the Rails route helper method #coupons_path returns "/coupons" (URL of link to index page)

# get '/coupons/new', to: 'coupons#new'
# route is GET request to localhost:3000/coupons/new, where form to create new coupon is presented
# route is mapped to #new controller action (method) in the CouponsController class
# following RESTful conventions, the name of the route is new_coupon, so
# the Rails route helper method #new_coupon_path returns "/coupons/new"
# which is the URL of link to webpage presenting the form to create a new coupon

# post '/coupons', to: 'coupons#create'
# route receives POST request sent by the form to create a new coupon upon its submission
# route receives data submitted in the form to create a new coupon (this data ends up in params)
# route is mapped to #create controller action (method) defined in CouponsController class

# line 3 explanation (show action to display a single coupon):
# route is GET request to localhost:3000/coupons/id attribute value of coupon instance to be shown
# route maps to the #show controller action (method) defined in the CouponsController class
# the name of the route is coupon
# therefore, we can call the #coupon_path(coupon) route helper method
# to return URL to page that shows a single coupon "/coupons/some id value here", ex: "/coupons/1"
# Rails automatically uses the coupon instance passed in as the argument of #coupon_path(coupon)
# to get the id attribute value of this coupon instance
