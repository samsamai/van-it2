class AddRiderAndDriverToUsers < ActiveRecord::Migration[5.0]
  def change
    change_column_default :users, :admin, false
    add_column :users, :rider, :boolean, :default => true
    add_column :users, :driver, :boolean, :default => false
  end
end
