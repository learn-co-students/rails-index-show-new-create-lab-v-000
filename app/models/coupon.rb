class Coupon < ActiveRecord::Base
  def to_s
    self.coupon_code + " can be used at " + self.store
  end
end
