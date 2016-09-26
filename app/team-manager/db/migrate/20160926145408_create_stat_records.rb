class CreateStatRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :stat_records do |t|
      t.text :record_value
      t.string :record_type
      t.datetime :record_date
      t.references :player_stats, foreign_key: true

      t.timestamps
    end
  end
end
