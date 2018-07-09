class RenameCouponssToCoupons < ActiveRecord::Migration
  def change
    rename_table :couponss, :coupons 
  end
end
