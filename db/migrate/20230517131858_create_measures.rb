class CreateMeasures < ActiveRecord::Migration[7.0]
  def change
    create_table :measures do |t|
      t.string :name
      t.float :value
      t.references :command, null: false, foreign_key: true

      t.timestamps
    end
  end
end
