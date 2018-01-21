class Coupon < ActiveRecord::Base

  def the_coupons
    self.coupon_code + "," + self.store
  end
end
