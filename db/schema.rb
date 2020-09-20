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

ActiveRecord::Schema.define(version: 2020_09_20_045128) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "babies", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "breastfeedings_id"
    t.index ["breastfeedings_id"], name: "index_babies_on_breastfeedings_id"
  end

  create_table "breastfeedings", force: :cascade do |t|
    t.float "quantity"
    t.float "feeding_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "baby_id"
    t.index ["baby_id"], name: "index_breastfeedings_on_baby_id"
  end

  add_foreign_key "babies", "breastfeedings", column: "breastfeedings_id"
  add_foreign_key "breastfeedings", "babies"
end
