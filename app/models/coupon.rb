class Coupon < ActiveRecord::Base
  def to_s
    "Code: " +self.coupon_code + " Store: " + self.store
  end
end
