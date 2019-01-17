class CouponsController < ActiveRecord::Base

  def index
    @coupons = Coupon.all
  end


end
