class AddSlugToIdeas < ActiveRecord::Migration[5.0]
  def change
    add_column :ideas, :slug, :string
  end
end
