class AddStoreToCoupon < ActiveRecord::Migration
  def change
    add_column :coupons, :store, :string
  end
end
