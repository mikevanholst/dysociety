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

ActiveRecord::Schema.define(version: 20131014212457) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "media"
    t.string   "author"
    t.datetime "posted_on"
    t.text     "teaser"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blogs", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "media"
    t.string   "author"
    t.datetime "posted_on"
    t.text     "teaser"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "culsertions", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "tally"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "videos", force: true do |t|
    t.string   "title"
    t.text     "teaser"
    t.string   "embed_url"
    t.string   "file_location"
    t.string   "source"
    t.boolean  "published"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
