class CouponsController < ApplicationController
  before_action :set_coupon, only: :show

  def index
    @coupons = Coupon.all
  end

  def show
  end

  def new
  end

  def create
    @coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:coupon_code])
    redirect_to coupon_path(@coupon)
  end

  private

  def set_coupon
    @coupon = Coupon.find(params[:id])
  end
end
