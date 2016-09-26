class CreateJoinTablePeopleTeams < ActiveRecord::Migration[5.0]
  def change
    create_join_table :people, :teams do |t|
      # t.index [:person_id, :team_id]
      # t.index [:team_id, :person_id]
    end
  end
end
