class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new

  end

  def create
    c = Coupon.new
    c.coupon_code = params[:coupon_code]
    c.store = params[:store]
    c.save
    redirect_to coupon_path(c)
  end

end