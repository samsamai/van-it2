class FixneedInsuranceDataType < ActiveRecord::Migration[5.0]
  def change
    change_column :rides, :need_insurance, :boolean
  end
end
