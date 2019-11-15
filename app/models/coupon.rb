class Coupon < ActiveRecord::Base

  def consolidate
    self.coupon_code + " - " + self.store
  end
end
