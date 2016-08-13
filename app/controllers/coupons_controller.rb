class CouponsController < ApplicationController
  before_action :set_coupon, only: [:show]

  def show
  end

  def create
    @coupon = Coupon.new
    @coupon.coupon_code = params[:coupon_code]
    @coupon.store = params[:store]
    @coupon.save
    redirect_to coupon_path(@coupon)
  end

  def index
    @coupons = Coupon.all
  end

  def new
  end

  private

    def set_coupon
      @coupon = Coupon.find(params[:id])
    end
end