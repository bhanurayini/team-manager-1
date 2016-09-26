class CreateCoaches < ActiveRecord::Migration[5.0]
  def change
    create_table :coaches do |t|
      t.string :license_num
      t.date :license_exp
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
