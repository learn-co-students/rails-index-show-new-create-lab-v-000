class RemoveColumnsCouponCodeAndStore < ActiveRecord::Migration
  def change
      remove_column :coupons, :coupon_code, :string
      remove_column :coupons, :store, :string
  end
end
