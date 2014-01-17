class CreateFurnishings < ActiveRecord::Migration
  def change
    create_table :furnishings do |t|
      t.string :furnishing_type
      t.string :name
      t.text :description
      t.string :imgs
      t.float :seats
      t.string :shape
      t.boolean :is_main

      t.timestamps
    end
  end
end
