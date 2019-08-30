class CouponsController < ApplicationController

  def index
  end

  def create
    @coupon = Coupon.new
    @coupon.coupon_code = params[:coupon_code]
    @coupon.store = params[:store]
    @coupon.save
    redirect_to coupon_path(@coupon)
  end

  def show
     @coupon = Coupon.find(params[:id])
  end
end
