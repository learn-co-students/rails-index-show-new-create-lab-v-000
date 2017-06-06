class Coupon < ActiveRecord::Base

  def full_info
    self.store + " - " + self.coupon_code
  end

end
