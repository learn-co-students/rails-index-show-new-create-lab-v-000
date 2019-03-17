class Coupon < ActiveRecord::Base
  def to_s
    self.store + ' - ' + self.coupon_code
  end
end
