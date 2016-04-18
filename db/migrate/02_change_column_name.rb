class ChangeColumnName < ActiveRecord::Migration
  def change
    change_table :coupons do |t|
      t.rename :coupon_code, :code
    end
  end
end
