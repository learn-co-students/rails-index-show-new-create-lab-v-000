class CouponsController < ApplicationController

  def index
    @coupons = Coupons.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new
  end

  def create
    @coupon = Coupon.new(coupon_code: params[:coupon_code], store: param[:store])
    @coupon.save
    redirect_to coupon_code(@coupon)
  end

end