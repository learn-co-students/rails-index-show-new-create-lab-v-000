class CouponsController < ApplicationController

  def index
  end

  def show
    @coupon = Coupon.find_by_id(params[:id])
  end

  def new
  end

  def create

    redirect_to coupon_path(@coupon)
  end
  
end
