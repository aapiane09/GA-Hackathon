class RemovesFusersFromSchema < ActiveRecord::Migration[5.0]
  def change
    drop_table :fusers
  end
end
