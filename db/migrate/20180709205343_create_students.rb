class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :coupon_code
      t.string :store
    end
  end
end
