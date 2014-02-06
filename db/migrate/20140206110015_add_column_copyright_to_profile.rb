class AddColumnCopyrightToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :copyright, :string
  end
end
