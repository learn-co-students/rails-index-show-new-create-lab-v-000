class CouponsController < ApplicationController

  def create
    @coupon = Coupon.create
    @coupon.coupon_code = params[:coupon_code]
    @coupon.store = params[:store]
    @coupon.save
    redirect_to coupon_path(@coupon)
  end

  def index
    @coupons = Coupon.all
  end

  def new

  end 

end