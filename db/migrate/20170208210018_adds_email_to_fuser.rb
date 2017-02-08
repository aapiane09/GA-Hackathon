class AddsEmailToFuser < ActiveRecord::Migration[5.0]
  def change
    add_column :fusers, :email, :string
  end
end
