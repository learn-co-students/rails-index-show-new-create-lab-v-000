class Coupon < ActiveRecord::Base

  def to_s
    "Store: #{self.store}, ID: #{self.id}"
  end

  def coupon_url
    "/coupon/#{self.id}"
  end

end