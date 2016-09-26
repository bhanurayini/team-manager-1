class CreateJoinTablePeopleFees < ActiveRecord::Migration[5.0]
  def change
    create_join_table :people, :fees do |t|
      # t.index [:person_id, :fee_id]
      # t.index [:fee_id, :person_id]
    end
  end
end
