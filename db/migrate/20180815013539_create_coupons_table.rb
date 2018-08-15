
class CreateCouponsTable < ActiveRecord::Migration
  
  def change
    create_table :coupons do |column|
      column.string :coupon_code 
      column.string :store
      
      column.timestamps null: false
    end
  end
  
end
