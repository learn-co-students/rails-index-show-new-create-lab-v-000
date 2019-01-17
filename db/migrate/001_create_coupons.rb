class CreateCoupons < ActiveRecord::Migration[5.2]
  def change
    create_table :coupons do |c|
      c.string :coupon_code
      c.string :store
    end
  end
end
