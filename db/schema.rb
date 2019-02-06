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

ActiveRecord::Schema.define(version: 2019_02_05_200325) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "examples", force: :cascade do |t|
    t.text "text", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_locations_on_user_id"
  end

  create_table "restrooms", force: :cascade do |t|
    t.bigint "location_id"
    t.bigint "user_id"
    t.string "name_of_establishment"
    t.string "cleanliness"
    t.string "smell"
    t.integer "number_of_toilets"
    t.boolean "handicap_accessible"
    t.boolean "baby_care"
    t.string "hours"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_restrooms_on_location_id"
    t.index ["user_id"], name: "index_restrooms_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "restroom_id"
    t.string "cleanliness"
    t.string "smell"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restroom_id"], name: "index_reviews_on_restroom_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "token", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["token"], name: "index_users_on_token", unique: true
  end

  add_foreign_key "examples", "users"
  add_foreign_key "locations", "users"
  add_foreign_key "restrooms", "locations"
  add_foreign_key "restrooms", "users"
  add_foreign_key "reviews", "restrooms"
  add_foreign_key "reviews", "users"
end
