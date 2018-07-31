class CouponsController < ActionController::Base

  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new
  end

  def create
    redirect_to Coupon.create(coupon_params)
  end


  private

  def coupon_params
    params.require(:coupon).permit(:coupon_code, :store)
  end
end
