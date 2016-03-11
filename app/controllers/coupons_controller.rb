class CouponsController < ApplicationController 
  def show 
    @coupon = Coupon.find(params[:id])
  end
  
  def new 
  end
  
  def create
    @coupon = Coupon.new
    if params[:coupon].nil?
      @coupon.store = params[:store]
      @coupon.coupon_code = params[:coupon_code]
    else
      @coupon.store = params[:coupon][:store]
      @coupon.coupon_code = params[:coupon][:coupon_code]
    end
    @coupon.save
    binding.pry
    redirect_to coupon_path(@coupon)
  end
  
  def index
    @coupons = Coupon.all
  end
end