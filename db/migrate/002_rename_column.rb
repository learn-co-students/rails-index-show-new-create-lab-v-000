class RenameColumn < ActiveRecord::Migration

  def change
    rename_column :coupons, :string, :store
  end

end
