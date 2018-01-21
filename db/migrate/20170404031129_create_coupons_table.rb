class CreateCouponsTable < ActiveRecord::Migration
  def change
    create_table :coupons_tables do |t|
      t.string :coupon_code
      t.string :store
      t.datetime "created_at",  null: false
      t.datetime "updated_at",  null: false
    end
  end
end
