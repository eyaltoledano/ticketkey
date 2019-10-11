class CreateBrands < ActiveRecord::Migration[5.2]
  def change
    create_table :brands do |t|
      t.string :name
      t.string :description
      t.string :email
      t.string :password_digest
      t.timestamps
    end
  end
end
