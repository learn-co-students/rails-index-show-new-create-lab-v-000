
class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def create
    @coupon = Coupon.new(params[:coupon_code], params[:store])
    @coupon.save
    redirect_to coupon_path(@coupon)
  end


end