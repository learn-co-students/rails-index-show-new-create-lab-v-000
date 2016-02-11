class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end

  def new

  end

  def create
    # binding.pry
    unless params[:coupon].nil?
      @coupon = Coupon.new(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
      @coupon.save
      redirect_to @coupon
    else
      redirect_to new_coupon_path
    end
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

end