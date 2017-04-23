class AddStatusToRide < ActiveRecord::Migration[5.0]
  def change
    add_column :rides, :status, :integer
  end
end
