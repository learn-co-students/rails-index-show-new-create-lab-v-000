class Coupon < ActiveRecord::based
  def to_s
    self.store + " " + self.coupon_code
  end
end
