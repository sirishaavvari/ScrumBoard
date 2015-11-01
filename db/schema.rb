# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151029181926) do

  create_table "blockers", force: true do |t|
    t.string   "blocker_type"
    t.text     "blocker_decription"
    t.integer  "scrum_update_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boards", force: true do |t|
    t.integer  "team_id"
    t.string   "team_name"
    t.date     "scrum_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meetings", force: true do |t|
    t.string   "description"
    t.decimal  "duration"
    t.integer  "scrum_update_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scrum_updates", force: true do |t|
    t.date     "scrum_date"
    t.text     "yesterday"
    t.text     "today"
    t.integer  "board_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "team_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "login"
    t.string   "user_name"
    t.integer  "team_id"
    t.boolean  "is_admin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
