class CouponsController < ApplicationController

  def index  #get
    @coupons = Coupon.all
  end

  def show  #get /:id
    set_coupon
  end

  def new #get /new
  end

  def create #post /new
    # @coupon = Coupon.create(coupon_params)
    # @coupon = Coupon.create(store: params[:coupon][:store], coupon_code: params[:coupon][:coupon_code])
      @coupon = Coupon.create(store: params[:store], coupon_code: params[:coupon_code])
    redirect_to coupon_path(@coupon)
  end


  private

  def coupon_params
    params.require(:coupon).permit(:store, :coupon_code)
  end

  def set_coupon
    @coupon = Coupon.find(params[:id])
  end
end
