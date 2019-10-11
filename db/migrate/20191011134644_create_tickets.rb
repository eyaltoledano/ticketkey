class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.integer :price
      t.string :description
      t.string :seating_info
      t.references :event
      t.references :user
      t.references :brand
      t.datetime :valid_start
      t.datetime :valid_end
      t.timestamps
    end
  end
end
