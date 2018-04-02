class ChangeColumnNullTrue < ActiveRecord::Migration
  def change
  	change_column :coupons, :coupon_code, :string, :null => true
  	change_column :coupons, :store, :string, :null => true
  end
end
