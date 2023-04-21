class RemoveBranchFromField < ActiveRecord::Migration[7.0]
  def change
    remove_reference :fields, :branch, null: false, foreign_key: true
  end
end
