class CreatePaymentTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :payment_types do |t|
      t.string :payment_type
      t.string :check_num
      t.string :cc_num
      t.string :acct_num
      t.string :routing_num

      t.timestamps
    end
  end
end
