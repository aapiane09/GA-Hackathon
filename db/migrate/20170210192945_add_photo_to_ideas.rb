class AddPhotoToIdeas < ActiveRecord::Migration[5.0]
  def change
    add_column :ideas, :photo, :string
  end
end
