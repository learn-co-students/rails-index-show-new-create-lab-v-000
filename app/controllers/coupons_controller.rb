class CouponsController < ApplicationController

  def new
  end

  def show
    @coupon = Coupon.find_by_id(params[:id])
  end

  def create
    @coupon = Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
    @coupon.save
    redirect_to coupon_path(@coupon)
  end
end
