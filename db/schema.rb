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

ActiveRecord::Schema.define(version: 2024_08_05_141626) do

  create_table "Arps", force: :cascade do |t|
    t.integer "num_arp"
    t.string "num_sei"
    t.integer "supplier_id", null: false
    t.integer "pregao_id", null: false
    t.integer "manager_id", null: false
    t.integer "manager_sub_id", null: false
    t.integer "supervisor_id", null: false
    t.integer "supervisor_sub_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["manager_id"], name: "index_arps_on_manager_id"
    t.index ["manager_sub_id"], name: "index_arps_on_manager_sub_id"
    t.index ["pregao_id"], name: "index_arps_on_pregao_id"
    t.index ["supervisor_id"], name: "index_arps_on_supervisor_id"
    t.index ["supervisor_sub_id"], name: "index_arps_on_supervisor_sub_id"
    t.index ["supplier_id"], name: "index_arps_on_supplier_id"
  end

  create_table "active_arps", force: :cascade do |t|
    t.integer "arp_id", null: false
    t.integer "item_id", null: false
    t.float "item_value"
    t.string "unit"
    t.integer "qty_item"
    t.date "date_start"
    t.date "validity"
    t.integer "institution_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["arp_id"], name: "index_active_arps_on_arp_id"
    t.index ["institution_id"], name: "index_active_arps_on_institution_id"
    t.index ["item_id"], name: "index_active_arps_on_item_id"
  end

  create_table "carts", force: :cascade do |t|
    t.integer "qty_item"
    t.integer "item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["item_id"], name: "index_carts_on_item_id"
  end

  create_table "institutions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "catmat"
    t.string "description"
    t.string "supply_unit"
    t.string "area"
    t.string "group"
    t.string "sugestion"
    t.string "critical"
    t.string "shelf_time"
    t.integer "consuption_year"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pregaos", force: :cascade do |t|
    t.string "num_pregao"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "description"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "cnpj"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "Arps", "pregaos"
  add_foreign_key "Arps", "suppliers"
  add_foreign_key "Arps", "users", column: "manager_id"
  add_foreign_key "Arps", "users", column: "manager_sub_id"
  add_foreign_key "Arps", "users", column: "supervisor_id"
  add_foreign_key "Arps", "users", column: "supervisor_sub_id"
  add_foreign_key "active_arps", "arps"
  add_foreign_key "active_arps", "institutions"
  add_foreign_key "active_arps", "items"
  add_foreign_key "carts", "items"
end
