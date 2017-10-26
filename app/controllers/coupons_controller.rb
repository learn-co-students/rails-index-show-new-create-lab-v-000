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
    session[:form_params] = params.inspect
    redirect_to new_coupon_path
  end

private
  def set_coupon
    @coupon = Coupon.find(params[:id])
  end
end
