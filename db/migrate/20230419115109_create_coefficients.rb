class CreateCoefficients < ActiveRecord::Migration[7.0]
  def change
    create_table :coefficients do |t|
      t.references :field, null: false, foreign_key: true
      t.references :branch, null: false, foreign_key: true
      t.integer :value

      t.timestamps
    end
  end
end
