class Coupon < ActiveRecord::Base
  
  def list_coupon
    "STORE: " + self.store + " || COUPON CODE: " + self.coupon_code
  end

end