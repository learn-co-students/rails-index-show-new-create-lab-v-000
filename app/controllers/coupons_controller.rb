class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find_by(id: params[:id])
  end

  def new
    @coupon = Coupon.new
  end

  def create 
    redirect_to coupon_path(Coupon.last) if Coupon.create(coupon_params)
  end

  private

    def coupon_params
      params.permit(:store, :coupon_code)
    end

end