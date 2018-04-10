class CreateCoupons < ActiveRecord::Migration
  def change
    create_table :coupons do |t|
      t.string :coupon_code, null: false
      t.string :store, null: false
    end
  end
end
