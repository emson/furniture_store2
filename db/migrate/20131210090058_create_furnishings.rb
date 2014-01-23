# TODO update model
# remove images and other image attributes
#
class CreateFurnishings < ActiveRecord::Migration
  def change
    create_table :furnishings do |t|
      t.string :furnishing_type
      t.string :shape
      t.float :seats
      t.string :name
      t.text :description
      t.string :image_main
      t.string :image_rollover
      t.string :image_dimensions
      t.string :image_other
      t.string :back
      t.string :seat
      t.boolean :is_main

      t.timestamps
    end
  end
end
