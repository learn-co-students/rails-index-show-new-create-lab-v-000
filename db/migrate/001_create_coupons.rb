class CreateCoupons < ActiveRecord::Migration
  def change
    create_table :coupons do |x|
      x.string :coupon_code
      x.string :store

      x.timestamp
    end
  end
end
