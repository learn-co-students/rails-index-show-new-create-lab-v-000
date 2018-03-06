class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def show
    set_coupon
  end

  def new
  end

  def create
    @coupon = Coupon.new
    @coupon[:coupon_code] = params[:coupon_code]
    @coupon[:store] = params[:store]
    @coupon.save
    redirect_to coupon_path(@coupon)
  end


private
  def set_coupon
    @coupon = Coupon.find(params[:id])
  end
end
