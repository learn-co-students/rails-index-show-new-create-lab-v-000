class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def new
  end

  def create
  @coupon = Coupon.create(store: params["coupon"]["store"], coupon_code: params["coupon"]["coupon_code"])
  @coupon.save
  redirect_to coupon_path(@coupon)
  end

  def show
    @coupon = Coupon.find_by_id(params["id"])
  end


end
