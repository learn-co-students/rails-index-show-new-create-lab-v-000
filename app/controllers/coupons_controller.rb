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
    @coupon = Student.new
    @coupon.first_name = params[:coupon_code]
    @coupon.last_name = params[:store]
    @coupon.save
    redirect_to coupon_path(@coupon)
  end
end