class CouponsController < ApplicationController


  def index
    @coupons = Coupon.all
  end

  def new
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def create
    @coupon = Coupon.create(coupon_params) # needed to bypas fordidden attributes error
    redirect_to coupon_path(@coupon)
  end


  private

  def coupon_params # needed to bypas fordidden attributes error
    params.require(:coupon).permit(:store, :coupon_code)
  end

end
