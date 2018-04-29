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

ActiveRecord::Schema.define(version: 20180427152354) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dreams", force: :cascade do |t|
    t.string "target"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "long_targets", force: :cascade do |t|
    t.string "target"
    t.date "start"
    t.date "end"
    t.bigint "dream_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dream_id"], name: "index_long_targets_on_dream_id"
  end

  create_table "medium_targets", force: :cascade do |t|
    t.string "target"
    t.date "start"
    t.date "end"
    t.bigint "long_target_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "status"
    t.index ["long_target_id"], name: "index_medium_targets_on_long_target_id"
  end

  create_table "steps", force: :cascade do |t|
    t.string "target"
    t.date "start"
    t.date "end"
    t.bigint "medium_target_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["medium_target_id"], name: "index_steps_on_medium_target_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "long_targets", "dreams"
  add_foreign_key "medium_targets", "long_targets"
  add_foreign_key "steps", "medium_targets"
end