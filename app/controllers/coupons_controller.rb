class CouponsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
    redirect_to coupon_path(@coupon)
  end
end

#rspec ./spec/controllers/coupons_controller_spec.rb --fail-fast
