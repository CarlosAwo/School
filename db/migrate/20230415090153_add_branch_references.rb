class AddBranchReferences < ActiveRecord::Migration[7.0]
  def change
    add_reference :fields, :branch, null: false, foreign_key: true
    add_reference :students, :branch, null: false, foreign_key: true
  end
end
