class CouponsController < ApplicationController

  def create
    @coupon = Coupon.new(coupon_code: params[:coupon_code], store: params[:store])
    @coupon.save
    redirect_to coupon_path
  end

  def index
  end

  def new
  end

end
