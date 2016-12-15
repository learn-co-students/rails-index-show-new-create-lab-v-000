class CouponsController < ApplicationController

  def create
    @coupon = Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
    redirect_to coupon_path(@coupon)
  end

  def new
  end

  def show
    @coupon = Coupon.find_by(id: params[:id])
  end

  def index
    @coupons = Coupon.all
  end
  
end