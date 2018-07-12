class CouponsController < ApplicationController

  def create
    @coupon = Coupon.new
    @coupon.update(coupon_code: params[:coupon][:coupon_code])
    @coupon.update(store: params[:coupon][:store])
    redirect_to coupon_path(@coupon)
  end

  def new

  end

  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end
end
