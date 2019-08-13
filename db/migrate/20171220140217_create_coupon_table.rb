class CreateCouponTable < ActiveRecord::Migration
  def change
    create_table :coupon_tables do |t|
      t.string :coupon_code
      t.string :store
    end
  end
end
