class RenameTable < ActiveRecord::Migration
  def change
    rename_table :coupon_tables, :coupons
  end
end
