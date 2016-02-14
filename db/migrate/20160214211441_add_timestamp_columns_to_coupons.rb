class AddTimestampColumnsToCoupons < ActiveRecord::Migration
  def change
    add_column :coupons, :created_at, :datetime
    add_column :coupons, :updated_at, :datetime
  end
end
