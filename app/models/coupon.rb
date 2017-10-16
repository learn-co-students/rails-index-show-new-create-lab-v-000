class Coupon < ActiveRecord::Base

  def info
    "Store: #{self.store}. " +
    "Code: #{self.coupon_code}"
  end
end
