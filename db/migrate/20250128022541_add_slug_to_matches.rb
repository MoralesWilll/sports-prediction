class AddSlugToMatches < ActiveRecord::Migration[7.2]
  def change
    add_column :matches, :slug, :string
    add_index :matches, :slug, unique: true
  end
end
