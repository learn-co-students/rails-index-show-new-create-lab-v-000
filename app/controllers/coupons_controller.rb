class CouponsController < ApplicationController
  def index
    @coupons = all_coupons
  end

  def show
    @coupon = set_coupon
  end

  def new
  end

  def create
    @coupon = Coupon.create(
      coupon_code: params[:coupon_code],
      store: params[:store]
      )
    redirect_to coupon_path(@coupon)
  end

  def set_coupon
    @coupon = Coupon.find(params[:id])
  end
  def all_coupons
    @all_coupons = Coupon.all
  end
end
