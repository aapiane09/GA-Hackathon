class RemoveImagesFromIdeas < ActiveRecord::Migration[5.0]
  def change
    remove_column :ideas, :images
  end
end
