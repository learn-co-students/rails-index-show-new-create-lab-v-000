class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end
  def new
    
  end
  def create
    @coupon = Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
  end
end
