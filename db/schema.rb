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

ActiveRecord::Schema.define(version: 20141006072328) do

  create_table "albums", force: true do |t|
    t.string "album_name"
    t.string "song_name"
  end

  create_table "artist", force: true do |t|
    t.string "first_name"
    t.string "last_name"
  end

  create_table "contract", force: true do |t|
    t.string "name"
    t.string "length"
    t.text   "artist_responsibility"
    t.text   "rep_responsibility"
    t.string "rep_margin"
  end

  create_table "rep", force: true do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "contact_number"
    t.string "email"
  end

  create_table "tour", force: true do |t|
    t.datetime "date_time"
    t.string   "location"
  end

end