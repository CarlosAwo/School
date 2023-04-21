class CreateFieldsBranches < ActiveRecord::Migration[7.0]
  def change
    create_table :branches_fields, id: false do |t|
      t.belongs_to :field
      t.belongs_to :branch
    end
  end
end
