class CreateFields < ActiveRecord::Migration[7.0]
  def change
    create_table :fields do |t|
      t.string :name
      t.string :sigle
      t.integer :duration

      t.timestamps
    end
  end
end
