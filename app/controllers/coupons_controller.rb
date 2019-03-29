class CouponsController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def create
    @coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
  end

end
