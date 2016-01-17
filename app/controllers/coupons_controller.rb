class CouponsController < ApplicationController
  before_action :set_coupon, only: :show

  def index
    @coupons = Coupon.all
  end

  def new
  end

  def show
  end

  def create
    @coupon = Coupon.new
    @coupon.store = params[:store]
    @coupon.coupon_code = params[:coupon_code]
    @coupon.save
    redirect_to coupon_path(@coupon)
  end

  private

  def set_coupon
    @coupon = Coupon.find(params[:id])
  end
end
