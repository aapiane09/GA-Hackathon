class AddsClassToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :class, :string

  end
end
