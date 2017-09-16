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
    @coupon = Coupon.new(coupon_code: params[:coupon_code], store: params[:store])
    if @coupon.save
      redirect_to coupon_path(@coupon)
    else
      redirect_to coupons_path
    end
  end
end    
