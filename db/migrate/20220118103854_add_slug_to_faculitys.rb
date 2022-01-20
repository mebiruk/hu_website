class AddSlugToFaculitys < ActiveRecord::Migration[5.2]
  def change
    add_column :facuilties, :slug, :string
    add_index :facuilties, :slug, unique: true
  end
end
