class AddSigleToBranches < ActiveRecord::Migration[7.0]
  def change
    add_column :branches, :sigle, :string
  end
end
