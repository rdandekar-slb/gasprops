# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_09_19_085747) do

  create_table "gases", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.float "specific_gravity"
    t.float "h2s"
    t.float "co2"
    t.float "n2"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "properties", force: :cascade do |t|
    t.float "pressure"
    t.float "temperature"
    t.float "zfactor"
    t.float "formationvolumefactor"
    t.float "viscosity"
    t.integer "gas_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gas_id"], name: "index_properties_on_gas_id"
  end

  create_table "props", force: :cascade do |t|
    t.float "pressure"
    t.float "temperature"
    t.float "zfactor"
    t.float "bg"
    t.float "viscosity"
    t.integer "gas_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gas_id"], name: "index_props_on_gas_id"
  end

  add_foreign_key "properties", "gases"
  add_foreign_key "props", "gases"
end
