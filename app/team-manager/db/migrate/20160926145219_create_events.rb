class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :event_type
      t.datetime :event_start_time
      t.datetime :event_end_time

      t.timestamps
    end
  end
end
