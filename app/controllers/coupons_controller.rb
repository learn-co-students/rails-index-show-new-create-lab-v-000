class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end
  def create
    coupon = Coupon.find_or_create_by(coupon_code: params[:coupon_code], store: params[:store])
    redirect_to coupon_path(coupon)
  end
  def show
    @coupon = Coupon.find_by_id(params[:id])
  end
end
