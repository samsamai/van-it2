class Fixstatusofride < ActiveRecord::Migration[5.0]
  def change
    change_column :rides, :status, :integer
  end
end
