class CreateJoinTableStaffsOrganizations < ActiveRecord::Migration[5.0]
  def change
    create_join_table :staffs, :organizations do |t|
      # t.index [:staff_id, :organization_id]
      # t.index [:organization_id, :staff_id]
    end
  end
end
