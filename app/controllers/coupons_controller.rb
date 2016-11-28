class CouponsController < ApplicationController
  before_action :set_coupon, only: [:show]

  def index
    @coupons = Coupon.all
  end

  def new
  end

  def create
    @coupon = Coupon.new
    @coupon.coupon_code = params[:coupon_code]
    @coupon.store = params[:store]
    @coupon.save
    redirect_to coupon_path(@coupon)
  end

  def show
  end

  private

  def set_coupon
    @coupon = Coupon.find_by(id: params[:id])
  end

end
