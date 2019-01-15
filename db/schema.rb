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

ActiveRecord::Schema.define(version: 2019_01_11_165714) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["first_name", "last_name"], name: "index_actors_on_first_name_and_last_name", unique: true
  end

  create_table "appearances", force: :cascade do |t|
    t.bigint "movie_id"
    t.bigint "actor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actor_id"], name: "index_appearances_on_actor_id"
    t.index ["movie_id"], name: "index_appearances_on_movie_id"
  end

  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.string "year_created"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "examples", force: :cascade do |t|
    t.text "text", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id"
  end

  create_table "inventories", force: :cascade do |t|
    t.string "product"
    t.integer "amount"
    t.float "price"
    t.string "size"
    t.string "color"
    t.bigint "brand_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_inventories_on_brand_id"
    t.index ["user_id"], name: "index_inventories_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_locations_on_user_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.string "director"
    t.date "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "token", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["token"], name: "index_users_on_token", unique: true
  end

  add_foreign_key "appearances", "actors"
  add_foreign_key "appearances", "movies"
  add_foreign_key "examples", "users"
  add_foreign_key "inventories", "brands"
  add_foreign_key "inventories", "users"
  add_foreign_key "locations", "users"
  add_foreign_key "restrooms", "locations"
  add_foreign_key "restrooms", "users"
end
