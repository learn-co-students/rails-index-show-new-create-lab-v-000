class CouponsController < ApplicationController


    def create
        @coupon = Coupon.new
        @coupon.coupon_code = params[:coupon_code]
        @coupon.store = params[:store]
        @coupon.save

        redirect_to @coupon
    end

    def index
        @coupons = Coupon.all
    end
    
    def new
    
    end
    
    def show
        @coupon = Coupon.find_by_id(params[:id])
    end
    

end