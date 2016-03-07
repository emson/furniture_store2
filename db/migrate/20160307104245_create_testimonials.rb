class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.text :comment
      t.string :author
      t.string :location

      t.timestamps
    end
  end
end
