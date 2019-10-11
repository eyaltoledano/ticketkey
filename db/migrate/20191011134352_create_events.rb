class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :category
      t.datetime :date_start
      t.datetime :date_end
      t.references :brand
      t.timestamps
    end
  end
end
