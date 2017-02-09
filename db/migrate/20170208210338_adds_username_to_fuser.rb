class AddsUsernameToFuser < ActiveRecord::Migration[5.0]
  def change
    add_column :fusers, :username, :string
  end
end
