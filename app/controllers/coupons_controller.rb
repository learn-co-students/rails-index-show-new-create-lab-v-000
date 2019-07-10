require 'pry'
class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def create
    # binding.pry
    @coupon = Coupon.new
    @coupon.coupon_code = params[:coupon][:coupon_code]
    @coupon.store = params[:coupon][:store]
    @coupon.save
    # raise @coupon.inspect
    redirect_to coupon_path(@coupon)
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new

  end

end
