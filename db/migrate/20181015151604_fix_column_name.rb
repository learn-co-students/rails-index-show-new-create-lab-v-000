class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :coupons, :coupon, :coupon_code
  end
end
