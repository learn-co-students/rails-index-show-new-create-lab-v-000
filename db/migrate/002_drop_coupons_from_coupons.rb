class DropCouponsFromCoupons < ActiveRecord::Migration

  def up
    remove_column :coupons, :coupons
  end
end
