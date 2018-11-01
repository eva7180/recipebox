class RemoveImageFromRecipes < ActiveRecord::Migration[5.2]
  def change
  	remove_column :recipes, :image_file_name
  	remove_column :recipes, :image_content_type
  	remove_column :recipes, :image_file_size
  	remove_column :recipes, :image_updated_at
  end
end
