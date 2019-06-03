class CouponsController < ApplicationController

  # GET /coupons
  def index
    @coupons = Coupon.all
  end

  # GET /coupons/1
  def show
    @coupon = Coupon.find(params[:id])
  end

  # GET /coupons/new
  def new
  end

  # POST /coupons
  def create
    @coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
    redirect_to coupon_path(@coupon)
  end

end
