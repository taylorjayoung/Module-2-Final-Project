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

ActiveRecord::Schema.define(version: 2018_10_02_172615) do

  create_table "bookings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "matched_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "listing_id"
    t.index ["matched_user_id"], name: "index_bookings_on_matched_user_id"
    t.index ["user_id", "matched_user_id"], name: "index_bookings_on_user_id_and_matched_user_id", unique: true
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "listings", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "city"
    t.string "state"
    t.string "address"
    t.float "rating"
    t.string "image"
  end

  create_table "reviews", force: :cascade do |t|
    t.float "rating"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
