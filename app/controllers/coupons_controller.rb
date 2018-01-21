class CouponsController < ApplicationController

 def index
  @coupons = Coupon.all
 end

 def create 
  @coupon = Coupon.new
  @coupon.coupon_code = params[:coupon_code]
  @coupon.store = params[:store]
  @coupon.save
  redirect_to coupon_path(@coupon)
 end

 def new

 end

 def show
   @coupon = Coupon.find(params[:id])
 end

end


#     Prefix Verb URI Pattern            Controller#Action
#    coupons GET  /coupons(.:format)     coupons#index
#            POST /coupons(.:format)     coupons#create
# new_coupon GET  /coupons/new(.:format) coupons#new
#     coupon GET  /coupons/:id(.:format) coupons#show


 # def change
 #    create_table :coupons do |t|
 #      t.string :coupon_code
 #      t.string :store

 #      t.timestamps null: false
 #    end