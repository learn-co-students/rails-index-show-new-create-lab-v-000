class Coupon < ActiveRecord::Base

  def self.count
    Coupon.all.size
  end

end