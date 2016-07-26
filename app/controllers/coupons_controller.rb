class CouponsController < ApplicationController

  # <%= text_field_tag :coupon_code  %>
  # <label>Store </label>
  # <%= text_field_tag :store  %>

  def create
    @coupon = Coupon.new
    @coupon.coupon_code = params[:coupon_code]
    @coupon.store = params[:store]
    @coupon.save

    redirect_to coupon_path(@coupon)

  end

  def index
    @coupons = Coupon.all
  end

  def show
    @c = Coupon.find(params[:id])

  end


end
