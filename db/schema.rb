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

ActiveRecord::Schema.define(version: 20171102023407) do

  create_table "cities", force: :cascade do |t|
    t.string "name", null: false
    t.integer "prefecture_id", null: false
    t.date "designated", null: false
    t.decimal "area", precision: 7, scale: 2, null: false
    t.integer "population", null: false
    t.index ["prefecture_id"], name: "index_cities_on_prefecture_id"
  end

  create_table "districts", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "prefectures", force: :cascade do |t|
    t.string "name", null: false
    t.integer "district_id", null: false
    t.index ["district_id"], name: "index_prefectures_on_district_id"
  end

end
