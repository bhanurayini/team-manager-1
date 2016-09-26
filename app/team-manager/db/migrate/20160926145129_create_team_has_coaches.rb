class CreateTeamHasCoaches < ActiveRecord::Migration[5.0]
  def change
    create_table :team_has_coaches do |t|
      t.string :coach_type
      t.references :person, foreign_key: true
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
