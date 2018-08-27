class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end

  def new
    # @coupon = Coupon.new
  end

  def create
    @coupon = Coupon.new
    @coupon[:coupon_code] = params[:coupon][:coupon_code]
    @coupon[:store] = params[:coupon][:store]
    @coupon.save
    redirect_to coupon_path(@coupon)
    # redirect_to coupons_path

  end

  def show
    @coupon = Coupon.find(params[:id])
  end
end
