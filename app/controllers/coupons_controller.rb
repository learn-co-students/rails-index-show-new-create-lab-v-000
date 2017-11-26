require 'pry'

class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def new
  end

  def create
  #  binding.pry
    @coupon = Coupon.new(coupon_code: params[:coupon_code],
                         store: params[:store]
                        )
    if @coupon.save
      redirect_to coupon_path(@coupon)
    else
      render :new
    end
  end

  def show
    @coupon = Coupon.find(params[:id])
  end
end
