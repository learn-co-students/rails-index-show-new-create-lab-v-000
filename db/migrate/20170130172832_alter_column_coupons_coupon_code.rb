class AlterColumnCouponsCouponCode < ActiveRecord::Migration
  def change
    change_column :coupons, :coupon_code, :string, :null => true
  end
end
