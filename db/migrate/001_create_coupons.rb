class CreateCoupons < ActiveRecord::Migration

  def change
    create_table :coupons do |t|
      t.string :coupon_code
      t.string :store
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end

end
