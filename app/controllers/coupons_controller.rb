require 'pry'

class CouponsController < ApplicationController

  def new
  end

  def create
    @coupon = Coupon.create(store: params[:store], coupon_code: params[:coupon_code])
    redirect_to coupon_path(@coupon) #coupon singular, not plural
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def index
  end

end
