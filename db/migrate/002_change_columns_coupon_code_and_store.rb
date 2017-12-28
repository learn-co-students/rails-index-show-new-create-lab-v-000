class ChangeColumnsCouponCodeAndStore < ActiveRecord::Migration
  def change
      change_column :coupons, :coupon_code, :string
      change_column :coupons, :store, :string
  end
end
