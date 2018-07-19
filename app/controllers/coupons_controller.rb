class CouponController < ApplicationController
  
  def index
    @coupons = Coupon.all
  end
  
  def new 
  end
  
  def show 
    @coupon = Coupon.find(params[:id])
  end
  
  def create
    @coupon = Coupon.new(coupon_code: params[:coupon_code], store: params[:store])
    @coupon.save
    redirect_to coupons_path(@coupon)
  end
  
end