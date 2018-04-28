class CouponsController < ApplicationController

    def index 
        @all_coupons = Coupon.all
    end

    def new 
    end

    def show 
        @coupon = Coupon.find_by(store: params[:id]) || Coupon.find_by(coupon_code: params[:id]) || Coupon.find(params[:id]) 
    end

    def create 
        @coupon = Coupon.new
        @coupon.coupon_code = params["coupon"]["coupon_code"]
        @coupon.store = params["coupon"]["store"]
        @coupon.save

        redirect_to coupon_path(@coupon)
    end
end