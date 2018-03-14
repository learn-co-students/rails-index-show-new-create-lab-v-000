class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def new
  end

  def create
    #@coupon = Coupon.create!{:coupon => { :coupon_code => "ASD123", :store => "Dean and Deluca"}
    #@coupon = Coupon.create!(:coupon_code => params[:coupon_code], :store => params[:store])
    @coupon = Coupon.new
    @coupon.coupon_code = params[:coupon_code]
    @coupon.store = params[:store]
    @coupon.save
    redirect_to coupon_path(@coupon)
  end

  def show
    @coupon = Coupon.find_by_id(params[:id])
  end

end
