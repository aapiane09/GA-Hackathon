class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :date
      t.string :event_photo

      t.timestamps
    end
  end
end
