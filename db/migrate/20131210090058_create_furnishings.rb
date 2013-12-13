class CreateFurnishings < ActiveRecord::Migration
  def change
    create_table :furnishings do |t|
      t.string :name
      t.text :description
      t.text :dimensions_description
      t.string :img
      t.string :alter
      t.float :seats
      t.string :shape
      t.string :furnishing_type
      t.boolean :is_main

      t.timestamps
    end
  end
end
