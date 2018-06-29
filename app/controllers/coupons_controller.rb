class CouponsController < ApplicationController

 def show
   @coupons = Coupon.all
 end

 def create
   @coupon = Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
   redirect_to coupon_path(@coupon)
 end

 def new
 end

end
