class Coupon < ActiveRecord::Base
  def to_s
    self.coupon_code + " from store: " + self.store
  end
end