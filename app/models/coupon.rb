class Coupon < ActiveRecord::Base

  def to_s
    "#{self.coupon_code} - #{self.store}"
  end

  def count
    self.count += 1
  end
end