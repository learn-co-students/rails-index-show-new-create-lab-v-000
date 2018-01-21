class CouponsController < ApplicationController
  def index # implicitly render views/coupons/index.html.erb view file, which has the same name as this #index action
    @coupons = Coupon.all
  end

  def new # implicitly render views/coupons/new.html.erb view file, where form is presented to create a new coupon
  end

  def create
    @coupon = Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
    redirect_to coupon_path(@coupon)
  end

  def show # implicitly render views/coupons/show.html.erb view file, which has the same name as this #show action
    @coupon = Coupon.find(params[:id])
  end
end
