class CouponsController < ApplicationController
  def index
  	@coupons=Coupon.all
  	render 'coupons/index'
  end

  def show
  	@coupon=Coupon.find(params[:id])
  	render 'coupons/show'
  end

  def new
  	render 'coupons/new'
  end

  def create
  	new_coupon=Coupon.create(coupon_code:params[:coupon_code], store:params[:store])
  	redirect_to coupon_path(new_coupon)
  end
end
