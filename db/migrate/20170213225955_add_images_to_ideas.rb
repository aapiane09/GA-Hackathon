class AddImagesToIdeas < ActiveRecord::Migration[5.0]
  def change
    add_column :ideas, :images, :string, array:true, default:[]
  end
end
