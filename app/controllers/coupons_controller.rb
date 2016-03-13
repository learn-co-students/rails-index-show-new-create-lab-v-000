class CouponsController < ApplicationController
  
  def index 
    @coupons = Coupon.all
  end
  
  def show 
    
  end
  
  def new
  
  end
  
  def create 
    @coupon = Coupon.new
    @coupon.coupon_code = params[:coupon_code]
    @coupon.store = params[:store]
    redirect_to coupon_path(@coupon) if @coupon.save
  end  
  
end