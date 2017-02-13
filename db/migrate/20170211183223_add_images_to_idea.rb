class AddImagesToIdea < ActiveRecord::Migration[5.0]
  def change
    add_column :ideas, :images, :json
  end
end
