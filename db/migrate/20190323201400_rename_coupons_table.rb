class RenameCouponsTable < ActiveRecord::Migration
  def change
    rename_table :coupons_tables, :coupons
  end
end
