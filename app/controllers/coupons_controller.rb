require 'pry'
require 'pry-rails'
class CouponsController < ApplicationController

  def index
    #binding.pry
    @coupons = Coupon.all
  end

  def new
    #binding.pry
  end

  def create
    @coupon = Coupon.new
    #binding.pry
    @coupon.coupon_code = params[:coupon][:coupon_code]
    @coupon.store = params[:coupon][:store]
    #binding.pry
    @coupon.save
    redirect_to coupon_path(@coupon)
  end

  def show
    #binding.pry
    @coupon = Coupon.find(params[:id])
  end

end
