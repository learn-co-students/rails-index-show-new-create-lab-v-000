class Coupon< ActiveRecord::Base
  def to_s
    self.coupon_code + " works for: " + self.store
  end
end