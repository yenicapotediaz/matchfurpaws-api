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

ActiveRecord::Schema.define(version: 20170105195434) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adopters", force: :cascade do |t|
    t.string   "name"
    t.string   "kids",                              array: true
    t.boolean  "cats"
    t.boolean  "dogs"
    t.string   "home_type"
    t.string   "searching_for"
    t.string   "ideal_temperament",                 array: true
    t.string   "ideal_active_level",                array: true
    t.integer  "hours_away_from_home"
    t.text     "bio"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "shelters", force: :cascade do |t|
    t.string   "name"
    t.string   "photo"
    t.string   "address"
    t.string   "email"
    t.string   "website"
    t.text     "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
