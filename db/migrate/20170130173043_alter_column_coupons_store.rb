class AlterColumnCouponsStore < ActiveRecord::Migration
  def change
    change_column :coupons, :store, :string, :null => true
  end
end
