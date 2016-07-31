class CouponController < ApplicationController
  def index
    @coupons = Coupon.all
  end
end
