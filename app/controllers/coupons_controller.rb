class CouponsController < ApplicationController #full set of crud controllers
  def index
    @coupons = Coupon.all
  end

  def show #dynamic route
    @coupon = Coupon.find(params[:id])
  end

  def new
    @coupon = Coupon.new
  end

  def create
    @coupon = Coupon.new
    @coupon[:coupon_code] = params[:coupon][:coupon_code]
    @coupon[:store] = params[:coupon][:store]
    @coupon.save
    redirect_to coupon_path(@coupon)
  end

  # add create method here
end
