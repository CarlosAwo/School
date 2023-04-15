class AddDurationToBranches < ActiveRecord::Migration[7.0]
  def change
    add_column :branches, :duration, :string
  end
end
