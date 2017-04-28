class ChangeStatusToRide < ActiveRecord::Migration[5.0]
  def change
   change_column :rides, :status, :string
  end
end
