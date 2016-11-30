class Coupon < ActiveRecord::Base

  def slug
    self.store + " -- " + self.coupon_code 
  end

end
