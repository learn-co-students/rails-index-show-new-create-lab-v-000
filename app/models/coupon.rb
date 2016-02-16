class Coupon < ActiveRecord::Base
  def formalize
    self.store + " - " + self.coupon_code
  end
end