class AddsColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :course, :string
    add_column :users, :password_digest, :string

  end
end
