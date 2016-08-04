class Coupon < ActiveRecord::Base
  def full_name
    self.id + ": " + self.coupon_code + " - " + self.store
  end
end