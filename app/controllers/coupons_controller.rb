class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all
    end

    def new
    end

    def create
        @coupon = Coupon.create(:coupon_code => params[:coupon_code], :store => params[:store])
        @coupon.save
        redirect_to coupons_path
    end

    def show
    end
end