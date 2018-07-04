class Coupon < ActiveRecord::Base
  def display
    self.store + ": " + self.coupon_code
  end
end