class ChangeColumnsForCoupons < ActiveRecord::Migration
  def change  
change_column_null :coupons, :coupon_code, true
change_column_null :coupons, :store, true
  end
end
