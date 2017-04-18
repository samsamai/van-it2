class CreateRides < ActiveRecord::Migration[5.0]
  def change
    create_table :rides do |t|
      t.string :pickup_pt
      t.string :destination_pt
      t.string :driver
      t.string :rider
      t.string :coupon
      t.integer :fare
      t.string :item_description
      t.integer :max_dimensions
      t.integer :max_weight
      t.boolean :help_needed
      t.datetime :start_time
      t.datetime :end_time
      t.boolean :need_insurance
      t.string :item_photo
      
      t.timestamps
    end
  end
end
