class AddContentToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :content, :string
  end
end
