class CouponsController < ApplicationController

    def index 
        @all_coupons = Coupon.all
    end

    def new 
    end

    def show 
        @coupon = Coupon.find(params[:id])
    end

    def create 
        @coupon = Coupon.new
        @coupon.coupon_code = params["coupon"]["coupon_code"]
        @coupon.store = params["coupon"]["store"]
        @coupon.save

        redirect_to coupons_path(@coupon)
    end
end