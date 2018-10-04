class CouponsController < ApplicationController
  before_action :set_params, only: [:show]
  def index
    @coupons = Coupon.all
  end
  def new

  end
  def create
    @coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
    redirect_to coupon_path(@coupon)
  end
  def show

  end

  private

  def set_params
    @coupon = Coupon.find(params[:id])
  end
end
