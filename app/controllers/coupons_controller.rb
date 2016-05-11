class CouponsController < ApplicationController

  def index
  end

  def new
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def create
    if params[:coupon]
      @coupon = Coupon.new(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
    else
      @coupon = Coupon.new(coupon_code: params[:coupon_code], store: params[:store])
    end
    @coupon.save

    redirect_to coupon_path(@coupon)
  end

end