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
    #binding.pry
    @coupon = Coupon.create
    @coupon.coupon_code = params[:coupon_code]
    @coupon.store = params[:store]

    if @coupon.save
      redirect_to coupon_path(@coupon)
    else
      render :new
    end
  end

end