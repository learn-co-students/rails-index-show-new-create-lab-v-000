class CreateCoupons < ActiveRecord::Migration[5.2]
  def change
    create_table :coupons do |c|
      c.string :coupon_code, null: false
      c.string :store, null: false

      c.timestamps null: false
    end
  end
end
