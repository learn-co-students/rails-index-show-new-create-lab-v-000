class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end

  def show
    @coupons = Coupon.find(params[:id])
  end

  def new

  end

  def create
     
    Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
    redirect_to coupons_path
  end

end #end of the class method.
