class Coupon < ActiveRecord::Base

  def pretty
    self.store + " | " + self.coupon_code
  end

end
