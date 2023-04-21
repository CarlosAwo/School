class AddProfessorReferencesToField < ActiveRecord::Migration[7.0]
  def change
    add_reference :fields, :professor, null: true, foreign_key: true
  end
end
