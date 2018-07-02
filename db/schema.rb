# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180702154920) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "investor_attributes", force: :cascade do |t|
    t.bigint "investor_id"
    t.bigint "investor_nomenclature_id"
    t.string "type_attribute"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["investor_id"], name: "index_investor_attributes_on_investor_id"
    t.index ["investor_nomenclature_id"], name: "index_investor_attributes_on_investor_nomenclature_id"
  end

  create_table "investor_contacts", force: :cascade do |t|
    t.string "name"
    t.string "role"
    t.string "email"
    t.string "phone"
    t.bigint "investor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["investor_id"], name: "index_investor_contacts_on_investor_id"
  end

  create_table "investor_nomenclatures", force: :cascade do |t|
    t.string "type_nomenclature"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "investors", force: :cascade do |t|
    t.string "name"
    t.string "nature"
    t.integer "investment_min"
    t.integer "investment_max"
    t.string "operation_type"
    t.string "localisation"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "corp_value_min"
    t.integer "corp_value_max"
    t.string "target_criteria"
    t.string "terms_financial"
    t.string "terms_other"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.boolean "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "investor_attributes", "investor_nomenclatures"
  add_foreign_key "investor_attributes", "investors"
  add_foreign_key "investor_contacts", "investors"
end
