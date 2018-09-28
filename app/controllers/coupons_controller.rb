class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end

  def new
  end

  def create
    @coupon = Coupon.new do |c|
      c.coupon_code = params[:coupon][:coupon_code]
      c.store       = params[:coupon][:store]
    end
    if @coupon.save
      redirect_to coupon_path(@coupon)
    end
  end

  def show
    @coupon = Coupon.find_by(id: params[:id])
  end
end
