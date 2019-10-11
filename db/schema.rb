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

ActiveRecord::Schema.define(version: 2019_10_11_191344) do

  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.datetime "date_start"
    t.datetime "date_end"
    t.integer "brand_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_events_on_brand_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.integer "price"
    t.string "description"
    t.string "seating_info"
    t.integer "event_id"
    t.integer "user_id"
    t.integer "brand_id"
    t.datetime "valid_start"
    t.datetime "valid_end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
    t.index ["brand_id"], name: "index_tickets_on_brand_id"
    t.index ["event_id"], name: "index_tickets_on_event_id"
    t.index ["user_id"], name: "index_tickets_on_user_id"
  end

end
