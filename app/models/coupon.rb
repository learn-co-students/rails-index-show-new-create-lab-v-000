class Coupon < ActiveRecord::Base
  def show
    self.coupon_code + " available for use at " + self.store
  end
end
