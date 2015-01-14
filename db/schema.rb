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

ActiveRecord::Schema.define(version: 20150112185007) do

  create_table "committee_voivodships", force: true do |t|
    t.integer  "committee_id"
    t.integer  "voivodship_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "committees", force: true do |t|
    t.string   "name"
    t.string   "logo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "districts", force: true do |t|
    t.string   "name"
    t.integer  "valid_votes"
    t.integer  "voivodship_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "districts", ["voivodship_id"], name: "index_districts_on_voivodship_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "role"
    t.integer  "district_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["district_id"], name: "index_users_on_district_id"

  create_table "voivodships", force: true do |t|
    t.string   "name"
    t.integer  "councilman"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "votes", force: true do |t|
    t.integer  "number"
    t.integer  "district_id"
    t.integer  "committee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["committee_id"], name: "index_votes_on_committee_id"
  add_index "votes", ["district_id"], name: "index_votes_on_district_id"

end
