class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :birth_place
      t.date :birth_date
      t.string :gender
      t.text :phone , array:true , default: []
      t.string :email
      t.string :residence
      t.integer :age

      t.timestamps
    end
  end
end
