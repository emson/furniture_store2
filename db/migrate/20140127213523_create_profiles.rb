class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :full_name
      t.string :phone
      t.string :email_main
      t.string :email_general
      t.text :address
      t.text :company
      t.string :facebook
      t.string :twitter
      t.string :pintrest

      t.timestamps
    end
  end
end
