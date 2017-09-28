class ChangeColumnCouponCodeInCoupons < ActiveRecord::Migration

  def change
    remove_column :coupons, :counpon_code
    add_column :coupons, :coupon_code, :string
  end

end
