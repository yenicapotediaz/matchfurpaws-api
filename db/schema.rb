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

ActiveRecord::Schema.define(version: 20170112183822) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adopters", force: :cascade do |t|
    t.string   "name"
    t.string   "kids"
    t.boolean  "cats"
    t.boolean  "dogs"
    t.string   "home_type"
    t.string   "searching_for"
    t.string   "ideal_temperament"
    t.string   "ideal_active_level"
    t.text     "bio"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "adopters_pets", id: false, force: :cascade do |t|
    t.integer "pet_id",     null: false
    t.integer "adopter_id", null: false
  end

  create_table "pets", force: :cascade do |t|
    t.string   "name"
    t.string   "photos"
    t.string   "est_age"
    t.string   "gender"
    t.string   "breed"
    t.string   "size"
    t.boolean  "cats"
    t.boolean  "dogs"
    t.string   "kids"
    t.string   "temperament"
    t.string   "exercise_needs"
    t.string   "home_type"
    t.text     "bio"
    t.date     "intake_date"
    t.integer  "adoption_fee"
    t.integer  "shelter_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "species"
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

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.integer  "userable_id"
    t.string   "userable_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["userable_type", "userable_id"], name: "index_users_on_userable_type_and_userable_id", using: :btree

end
