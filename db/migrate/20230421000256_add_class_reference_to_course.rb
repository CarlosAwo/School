class AddClassReferenceToCourse < ActiveRecord::Migration[7.0]
  def change
    add_reference :courses, :class_room, null: false, foreign_key: true
  end
end
