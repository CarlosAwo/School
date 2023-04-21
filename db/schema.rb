# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_04_21_000256) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "branches", force: :cascade do |t|
    t.string "name"
    t.string "sigle"
    t.string "duration"
    t.float "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "class_rooms", force: :cascade do |t|
    t.string "name"
    t.integer "capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coefficients", force: :cascade do |t|
    t.bigint "field_id", null: false
    t.bigint "branch_id", null: false
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["branch_id"], name: "index_coefficients_on_branch_id"
    t.index ["field_id"], name: "index_coefficients_on_field_id"
  end

  create_table "courses", force: :cascade do |t|
    t.bigint "professor_id", null: false
    t.bigint "branch_id", null: false
    t.string "duration"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "class_room_id", null: false
    t.index ["branch_id"], name: "index_courses_on_branch_id"
    t.index ["class_room_id"], name: "index_courses_on_class_room_id"
    t.index ["professor_id"], name: "index_courses_on_professor_id"
  end

  create_table "fields", force: :cascade do |t|
    t.string "name"
    t.string "sigle"
    t.integer "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "branch_id", null: false
    t.bigint "professor_id", null: false
    t.index ["branch_id"], name: "index_fields_on_branch_id"
    t.index ["professor_id"], name: "index_fields_on_professor_id"
  end

  create_table "professors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.text "phone", default: [], array: true
    t.date "birth_date"
    t.string "birth_place"
    t.string "gender"
    t.string "residence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "birth_place"
    t.date "birth_date"
    t.string "gender"
    t.text "phone", default: [], array: true
    t.string "email"
    t.string "residence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "branch_id", null: false
    t.index ["branch_id"], name: "index_students_on_branch_id"
  end

  add_foreign_key "coefficients", "branches"
  add_foreign_key "coefficients", "fields"
  add_foreign_key "courses", "branches"
  add_foreign_key "courses", "class_rooms"
  add_foreign_key "courses", "professors"
  add_foreign_key "fields", "branches"
  add_foreign_key "fields", "professors"
  add_foreign_key "students", "branches"
end
