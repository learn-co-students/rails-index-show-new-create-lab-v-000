class CouponsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @coupon = Coupon.create(store: params[:store], coupon_code: params[:coupon_code])
    redirect_to coupon_path(@coupon)
  end

end
