class AddSocialMediaToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :instagram,        :string, default: ""
    add_column :profiles, :house_and_garden, :string, default: ""
  end
end
