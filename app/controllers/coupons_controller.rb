class CouponsController < ApplicationController


  def index
    @coupons = Coupon.all
  end

  def new
  end

  def create
    @new_coupon = Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
    redirect_to coupon_path(@new_coupon)
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

end