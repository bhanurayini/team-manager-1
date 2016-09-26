class CreateFees < ActiveRecord::Migration[5.0]
  def change
    create_table :fees do |t|
      t.string :fee_amt
      t.string :paid_amt
      t.datetime :created_on
      t.datetime :paid_on
      t.references :people, foreign_key: true
      t.references :player_stats, foreign_key: true

      t.timestamps
    end
  end
end
