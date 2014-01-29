class AddColumnImageSideToPages < ActiveRecord::Migration
  def change
    add_column :pages, :image_side, :string
  end
end
