class CouponsController < ApplicationController

  #GET coupons all
  def index
    @coupons = Coupon.all
  end

  #GET /coupons/id
  def show
    @coupon = Coupon.find_by(params[:id])
  end

  #GET /coupons/new
  def new
  end

  #POST coupons/new
  def create
    @coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
    redirect_to coupon_path(@coupon)
  end
end
