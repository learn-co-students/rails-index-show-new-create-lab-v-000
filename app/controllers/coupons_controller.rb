require 'pry'
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
    @coupon = Coupon.create(coupon_params)
    redirect_to coupon_path(@coupon)
  end

  private

    def coupon_params
      params.permit(:coupon_code, :store)
    end
end
