class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

      def new
      end

      def create
        @coupon = Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
        redirect_to coupon_path(@coupon)
      end

  def show
    @coupon = Coupon.find(params[:id])
  end
end
# {"utf8"=>"✓",
#  "authenticity_token"=>"8Y8TTdWs7kpbIeNXko7ApwEGz8f7bsL9tGwT19MoodT9wIIDnhR5IItmQRTpJhk8ctAbzCCxcr7SlBW/n0avSw==",
#  "coupon_code"=>"abc",
#  "store"=>"Joshua's",
#  "commit"=>"Submit Coupon"}
