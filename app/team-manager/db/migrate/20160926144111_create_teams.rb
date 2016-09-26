class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :team_name
      t.string :age_group
      t.integer :wins
      t.integer :loses
      t.integer :ties
      t.date :team_start
      t.date :team_end
      t.boolean :is_archived

      t.timestamps
    end
  end
end
