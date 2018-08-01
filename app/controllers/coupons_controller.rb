class CouponsController < ActionController::Base


def index
  @coupons = Coupon.all
end

  def create
    @coupon = Coupon.new
@coupon.coupon_code = params[:coupon][:coupon_code]
@coupon.store = params[:coupon][:store]
@coupon.save
redirect_to coupon_url(@coupon)
  end

  def show
  		@coupon = Coupon.find(params[:id])
  	end



  def new
		@coupon = Coupon.new
	end


end
