class RenameImageUrlToImage < ActiveRecord::Migration[7.0]
  def change
    rename_column :spells, :image_url, :image
  end
end
