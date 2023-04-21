class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.references :professor, null: false, foreign_key: true
      t.references :branch, null: false, foreign_key: true
      t.string :duration
      t.string :title

      t.timestamps
    end
  end
end
