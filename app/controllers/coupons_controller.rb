require 'pry'

class CouponsController < ApplicationController

  def index
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new
  end

  def create
    #binding.pry
    @coupon = Coupon.new
    @coupon.store = params[:coupon][:store]
    @coupon.coupon_code = params[:coupon][:coupon_code]
    @coupon.save
    redirect_to coupon_path(@coupon)
  end


end
