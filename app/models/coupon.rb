class Coupon < ActiveRecord::Base
  def output
    self.coupon_code + " at: " + self.store
  end
end
