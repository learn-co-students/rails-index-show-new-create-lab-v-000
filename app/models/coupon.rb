class Coupon <ActiveRecord::Base
  def coupon
    self.coupon_code + ": " + self.store
  end
end
