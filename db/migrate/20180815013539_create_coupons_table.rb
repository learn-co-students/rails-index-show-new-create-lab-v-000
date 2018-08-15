
class CreateCouponsTable < ActiveRecord::Migration
  
  def change
    create_table :coupons do |column|
      column.string :coupon_code 
      column.string :store
      
      t.timestamps null: false
    end
  end
  
end
