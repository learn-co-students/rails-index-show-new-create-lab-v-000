require 'pry'
class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find_by_id(params[:id])
  end

  def new
  end

  def create
    if params[:coupon_code] != nil
      @coupon = Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
    else
      @coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
    end
    redirect_to coupon_path(@coupon)
  end

end
