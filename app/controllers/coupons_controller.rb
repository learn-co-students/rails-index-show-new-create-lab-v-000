class CouponsController < ApplicationController

  def create
    @coupon = Coupon.new(coupon_params)
    @coupon.save
    redirect_to coupon_path(@coupon.id)
  end

  def new
  end

  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find_by_id(params[:id])
  end

  private

  def coupon_params
    params.permit(:coupon_code, :store)
  end
end
