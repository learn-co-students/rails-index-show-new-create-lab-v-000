class Coupon < ActiveRecord::Base
  def link_title
    "#{self.store}: #{self.coupon_code}"
  end
end
