class CreatePlayerStats < ActiveRecord::Migration[5.0]
  def change
    create_table :player_stats do |t|
      t.string :jersey_number
      t.text :player_bio
      t.integer :height
      t.integer :weight
      t.references :person, foreign_key: true
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
