class Coupon < ActiveRecord::Base

  def stringify_keys
    "#{self.coupon_code} - #{self.store}"
  end

end
