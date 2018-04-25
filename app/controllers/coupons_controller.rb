class CouponsController < ApplicationController
  def new
  end

  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def create
    @coupon = Coupon.new
    @coupon.store = params[:coupon][:store]
    @coupon.coupon_code = params[:coupon][:coupon_code]
    @coupon.save
    redirect_to coupon_path(@coupon)
  end

  private
    def set_coupon
      @coupon = Coupon.find(params[:id])
    end
end
