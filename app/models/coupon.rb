class Coupon < ActiveRecord::Base

  def to_s
    self.store
  end

end