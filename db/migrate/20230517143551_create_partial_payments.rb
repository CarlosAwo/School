class CreatePartialPayments < ActiveRecord::Migration[7.0]
  def change
    create_table :partial_payments do |t|
      t.float :amount
      t.float :rest
      t.string :reference
      t.references :payment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
