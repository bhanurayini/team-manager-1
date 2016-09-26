class CreateJoinTableTeamsOrganizations < ActiveRecord::Migration[5.0]
  def change
    create_join_table :teams, :organizations do |t|
      # t.index [:team_id, :organization_id]
      # t.index [:organization_id, :team_id]
    end
  end
end
