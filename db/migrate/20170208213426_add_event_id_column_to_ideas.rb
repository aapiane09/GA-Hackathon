class AddEventIdColumnToIdeas < ActiveRecord::Migration[5.0]
  def change
    add_reference :ideas, :event, foreign_key: true
  end
end
