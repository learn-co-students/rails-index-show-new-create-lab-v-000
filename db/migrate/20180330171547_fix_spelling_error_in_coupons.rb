class FixSpellingErrorInCoupons < ActiveRecord::Migration
  def change
    rename_column :coupons, :cpoupn_code, :coupon_code
  end
end
