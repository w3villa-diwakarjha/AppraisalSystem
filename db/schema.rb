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

ActiveRecord::Schema.define(version: 2023_09_06_193809) do

  create_table "appraisal_details", force: :cascade do |t|
    t.integer "appraisal_id", null: false
    t.integer "kra_id", null: false
    t.integer "appraisee_marks"
    t.integer "appraiser_marks"
    t.text "appraiser_comments"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["appraisal_id"], name: "index_appraisal_details_on_appraisal_id"
    t.index ["kra_id"], name: "index_appraisal_details_on_kra_id"
  end

  create_table "appraisals", force: :cascade do |t|
    t.integer "appraisee_id", null: false
    t.integer "appraiser_id", null: false
    t.date "period_start"
    t.date "period_end"
    t.string "status"
    t.text "appraisee_comments"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "designations", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.integer "designation_id", null: false
    t.string "email"
    t.date "date_of_joining"
    t.text "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "role"
    t.index ["designation_id"], name: "index_employees_on_designation_id"
  end

  create_table "kras", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "max_marks"
    t.integer "designation_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["designation_id"], name: "index_kras_on_designation_id"
  end

  add_foreign_key "appraisal_details", "appraisals"
  add_foreign_key "appraisal_details", "kras"
  add_foreign_key "employees", "designations"
  add_foreign_key "kras", "designations"
end
