class CouponsController < ApplicationController

  def index
    @coupons=Coupon.all
  end

  def show
   @coupon=Coupon.find_by(params[:id])
  end

  def new
  end
  def create
   @c=Coupon.create(coupon_code: params[:coupon_code] , store: params[:store])
   redirect_to coupon_path(@c)
  end
end
