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

ActiveRecord::Schema.define(version: 20141202044821) do

  create_table "descriptions", force: true do |t|
    t.text     "description"
    t.integer  "secondary_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", force: true do |t|
    t.string   "name"
    t.integer  "description_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar"
    t.string   "avatar1"
  end

  create_table "legalcountries", force: true do |t|
    t.string   "countryname"
    t.string   "countrypostalcode"
    t.string   "countrycallingcode"
    t.integer  "country_createdby"
    t.integer  "country_modifiedby"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "legaldescriptions", force: true do |t|
    t.text     "ldescription"
    t.integer  "ldesc_createdby"
    t.integer  "ldesc_modifiedby"
    t.integer  "legalmaster_id"
    t.integer  "legalcountry_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "legalmasters", force: true do |t|
    t.string   "lmname",       limit: 50
    t.text     "lmdesc"
    t.integer  "lmcreatedby"
    t.integer  "lmmodifiedby"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "masters", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "secondaries", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "height"
    t.integer  "width"
    t.integer  "depth"
    t.integer  "distance_from"
    t.integer  "distance_end"
    t.integer  "master_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
