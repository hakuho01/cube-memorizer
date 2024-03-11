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

ActiveRecord::Schema[7.0].define(version: 2024_03_11_105548) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_stat_statements"
  enable_extension "plpgsql"

  create_table "cards", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "winner_id"
    t.string "cardname"
    t.string "image_path"
    t.integer "mana_value"
    t.boolean "is_land"
    t.integer "use_quantity"
  end

  create_table "events", force: :cascade do |t|
    t.string "place"
    t.string "member"
    t.string "remarks"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "tournament_id"
  end

  create_table "tournament_types", force: :cascade do |t|
    t.string "tournament_type_ja"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tournaments", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date "date"
    t.string "name"
  end

  create_table "winners", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "tournament_id"
    t.integer "tournament_type"
    t.string "player_name"
    t.string "result"
  end

end
