class CouponsController < ApplicationController

  def index
  end

  def new
  end

  def create
    @coupon = Coupon.new(coupon_code: params[:coupon_code], store: params[:store])
    @coupon.save
    redirect_to coupon_path(@coupon)
  end

end
