class RemovesPhotoFromUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :photo
  end
end
