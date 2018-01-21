class RemoveStoteFromCoupons < ActiveRecord::Migration
  def change
    remove_column :coupons, :stote, :string
  end
end
