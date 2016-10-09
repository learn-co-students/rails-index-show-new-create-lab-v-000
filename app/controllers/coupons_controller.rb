class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new
  end

  def create
    @coupon = Coupon.new(coupon_params)
    redirect_to (@coupon.save ? coupon_path(@coupon) : new_coupon_path)
  end

  private

  def coupon_params
    params.permit(:store, :coupon_code)
  end

end
