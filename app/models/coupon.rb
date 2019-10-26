class Coupon < ActiveRecord::Base
  def combine_attributes
    self.coupon_code + " - " + self.store
  end
end
