class Coupon < ActiveRecord::Base
  def to_s
    return self.coupon_code + " from store: " + self.store
  end
end
