class Coupon < ActiveRecord::Base
  def to_s
    self.coupon_code + "in" + self.store
  end
   
  def to_a 
    self.coupon_code
  end

  def to_b
    self.store
  end

end