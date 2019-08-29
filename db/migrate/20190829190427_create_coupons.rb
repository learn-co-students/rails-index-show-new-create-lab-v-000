class CreateCoupons < ActiveRecord::Migration[5.0]
  def change
    create_table :coupons do |t|
      t.string :coupon_code, null: false
      t.string :store, null: false

      t.timestamps null: false
    end
  end
end
