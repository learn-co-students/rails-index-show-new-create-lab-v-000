class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new

  end

  def create
    c = Coupon.new
    c.coupon_code = params[:coupon][:coupon_code]
    c.store = params[:coupon][:store]
    if c.save
      redirect_to coupon_path(c)
    else
      flash[:error] = c.errors.full_messages
      redirect_to new_coupon_path
    end
  end
end
