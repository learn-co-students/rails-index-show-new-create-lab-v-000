class Coupon < ActiveRecord::Base

    def display_info
        "#{self.store}: #{self.coupon_code}"
    end 
end