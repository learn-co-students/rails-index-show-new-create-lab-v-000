class CouponsController < ActiveRecord::Base
  def index
  end

  def show
    @coupon = Coupon.find_by_id(params[:id])
  end

  def new
  end

  def create
    @new_coupon = Coupon.new
    @new_coupon.coupon_code = params[:coupon_code]
    @new_coupon.store = params[:store]
    @new_coupon.save
    redirect_to coupon_path(@new_coupon)
  end
end