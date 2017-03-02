class Coupon < ActiveRecord::Base
  validates_presence_of :coupon_code, :store
end
