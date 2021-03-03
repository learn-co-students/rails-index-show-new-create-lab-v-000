class RenameCouponToCouponCode < ActiveRecord::Migration[5.0]
  def change
    rename_column(:coupons, :coupon, :coupon_code)
  end
end
