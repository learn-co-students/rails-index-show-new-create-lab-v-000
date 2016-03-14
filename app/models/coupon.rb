class  Coupon < ActiveRecord::Base
	
	def to_s
		"Coupon - store: #{store}, code: #{coupon_code}"
	end
end