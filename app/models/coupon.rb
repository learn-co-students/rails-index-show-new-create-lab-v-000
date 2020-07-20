class Coupon < ActiveRecord::Base
  def to_s
    self.coupon_code + "in" + self.store
  end
   
end