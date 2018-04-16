class CouponsController < ApplicationController
  
  def index
    @coupons = Coupon.all
  end
  
  def new
  end
  
  def create
    @coupon = Coupon.new
    @coupon.coupon_code = params["coupon"]["coupon_code"]
    @coupon.store = params["coupon"]["store"]
    redirect_to coupon_path(@coupon) if !!@coupon.save
  end
  
  def show
    @coupon = Coupon.find_by(:id => params["id"])
  end
  
end
