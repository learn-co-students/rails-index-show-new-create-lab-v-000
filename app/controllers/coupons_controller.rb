class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find_by_id(params[:id])
  end

  def new
  end

  def create
    @coupon = Coupon.new(coupon_code: params[:coupon_code], store: params[:store])
    @coupon.save
    redirect_to coupon_path(@coupon)
  end


end