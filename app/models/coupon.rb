class Coupon <ActiveRecord::Base
  def to_s
    coupon_code + "|" + store
  end
end
