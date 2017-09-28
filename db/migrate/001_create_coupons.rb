class CreateCoupons < ActiveRecord::Migration

  def change
    create_table :coupons do |t|
      t.string :counpon_code
      t.string :store
    end
  end

end
