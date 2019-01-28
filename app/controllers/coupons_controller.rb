class CouponsController < ApplicationController

    def new
    end

    def show
        @coupon = Coupon.find(params[:id])
    end

    def create
        @coupon = Coupon.new(store: params[:coupon][:store], coupon_code: params[:coupon][:coupon_code])
        @coupon.save
        redirect_to coupon_path(@coupon)
    end

    def index
        @coupons = Coupon.all
    end


end
