class Coupon < ActiveRecord::Base

  validates :coupon_code, presence: true
  validates :store, presence: true
end
