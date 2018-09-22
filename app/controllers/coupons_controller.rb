class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
    redirect_to coupons_path
  end

  def show
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
    redirect_to coupons_path(@coupon)
  end

  # add create method here
end
