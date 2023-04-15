class CreateProfessors < ActiveRecord::Migration[7.0]
  def change
    create_table :professors do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :phone , array:true , default: []
      t.date :birth_date
      t.string :birth_place
      t.string :gender
      t.integer :age
      t.string :residence

      t.timestamps
    end
  end
end
