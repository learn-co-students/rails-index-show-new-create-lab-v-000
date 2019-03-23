class CreateCouponsTable < ActiveRecord::Migration
  def change
    create_table :coupons_tables do |t|
      t.string :coupon_code
      t.string :store
    end
  end
end
