class CouponsController < ApplicationController
  # before_action :set_coupon, only: :show

  def index
    @coupons = Coupon.all
  end

  def new
    # @coupon = Coupon.new
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def create
    @coupon = Coupon.new
    @coupon.store = params[:store]
    @coupon.coupon_code = params[:coupon_code]
    @coupon.save
    redirect_to coupon_path(@coupon)
  end
end
