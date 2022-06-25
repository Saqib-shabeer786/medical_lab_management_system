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

ActiveRecord::Schema[7.0].define(version: 2022_06_25_203924) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.string "name"
    t.string "sex"
    t.integer "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_doctors_on_name"
    t.index ["phone"], name: "index_doctors_on_phone"
  end

  create_table "patent_tests", force: :cascade do |t|
    t.integer "patient_id"
    t.integer "test_id"
    t.boolean "rate"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["date"], name: "index_patent_tests_on_date"
    t.index ["patient_id"], name: "index_patent_tests_on_patient_id"
    t.index ["test_id"], name: "index_patent_tests_on_test_id"
  end

  create_table "patient_cases", force: :cascade do |t|
    t.integer "patient_id"
    t.integer "doctor_id"
    t.datetime "collection_date"
    t.datetime "reporting_date"
    t.boolean "total_amount"
    t.boolean "paid"
    t.boolean "due"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["collection_date"], name: "index_patient_cases_on_collection_date"
    t.index ["doctor_id"], name: "index_patient_cases_on_doctor_id"
    t.index ["patient_id"], name: "index_patient_cases_on_patient_id"
  end

  create_table "patient_reports", force: :cascade do |t|
    t.integer "case_id"
    t.integer "perameter_id"
    t.string "result"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.string "age"
    t.string "sex"
    t.integer "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_patients_on_name"
    t.index ["phone"], name: "index_patients_on_phone"
  end

  create_table "test_perameters", force: :cascade do |t|
    t.string "name"
    t.string "range"
    t.string "unit"
    t.integer "category_id"
    t.integer "test_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_test_perameters_on_name"
    t.index ["test_id"], name: "index_test_perameters_on_test_id"
  end

  create_table "tests", force: :cascade do |t|
    t.string "name"
    t.integer "rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_tests_on_name"
  end

end
