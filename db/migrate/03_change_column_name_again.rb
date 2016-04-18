class ChangeColumnNameAgain < ActiveRecord::Migration
  def change
    change_table :coupons do |t|
      t.rename :code, :coupon_code
    end
  end
end
