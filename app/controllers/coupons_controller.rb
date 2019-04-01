class CouponsController < ApplicationController

  def new
  end

  def create
    Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
    redirect_to Coupon.last
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def index
    @coupons = Coupon.all
  end
end
