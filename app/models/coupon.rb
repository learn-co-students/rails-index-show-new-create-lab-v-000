class Coupon < ActiveRecord::Base
    def details
        self.store + ': ' + self.coupon_code
    end
end