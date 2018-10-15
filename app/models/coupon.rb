class Coupon < ActiveRecord::Base
	def to_s
		"Coupon Code: " + self.coupon_code + " " + "Store: " + self.store
	end
end