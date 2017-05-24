class Coupon < ActiveRecord::Base

  def count
    Coupon.all.count
  end

end
