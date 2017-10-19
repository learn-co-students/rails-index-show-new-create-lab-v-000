class CouponsController < ActionController::Base
   def index
     @coupons = Coupon.all
   end

   def show
     @coupon = Coupon.find(params[:id])
   end

   def new
   end


end
