class CouponsController < ActionController::Base
    def create
        @coupon = Coupon.create(store: params[:coupon][:store], coupon_code: params[:coupon][:coupon_code])
        redirect_to coupon_path(@coupon)
    end
    
    def show
        @coupon = Coupon.find(params[:id])
    end
    
    def index
        @coupons = Coupon.all
    end
    
    def new
    end
end