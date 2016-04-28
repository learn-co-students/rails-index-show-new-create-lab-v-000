class CouponsController < ApplicationController 
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @coupons = Coupon.all
  end

  def new
  end

  def create 
    @coupon = Coupon.new
    @coupon.store = params[:store]
    @coupon.coupon_code = params[:coupon_code]
    @coupon.save
    redirect_to coupon_path(@coupon)
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

end