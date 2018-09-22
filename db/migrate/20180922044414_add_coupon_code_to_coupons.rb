class AddCouponCodeToCoupons < ActiveRecord::Migration
  def change
    add_column :coupons, :coupon_code, :string
  end
end
