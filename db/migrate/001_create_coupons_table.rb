class CreateCouponsTable < ActiveRecord::Migration

  def up
    create_table :coupons do |t|
      t.string :store
      t.string :coupon_code
    end
  end

  def down
    drop_table :coupons
  end

end