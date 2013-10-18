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

ActiveRecord::Schema.define(version: 20131018025436) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

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

  create_table "badges", force: true do |t|
    t.string   "name"
    t.string   "kind"
    t.string   "icon"
    t.integer  "score"
    t.boolean  "earned"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
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

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "chapters", force: true do |t|
    t.integer  "number"
    t.string   "title"
    t.text     "content"
    t.boolean  "free"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "teaser"
  end

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "web_address"
    t.text     "description"
    t.integer  "category_id"
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

  create_table "questions", force: true do |t|
    t.string   "text"
    t.string   "right"
    t.string   "wrong_1"
    t.string   "wrong_2"
    t.string   "wrong_3"
    t.string   "success"
    t.string   "failure"
    t.integer  "quiz_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "answer"
  end

  create_table "quizzes", force: true do |t|
    t.string   "name"
    t.integer  "size"
    t.integer  "score"
    t.string   "success"
    t.string   "failure"
    t.integer  "quiz_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "chapter_id"
  end

  create_table "sashes", force: true do |t|
    t.integer  "user_id"
    t.integer  "badge_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scorecards", force: true do |t|
    t.integer  "total"
    t.integer  "chapters"
    t.integer  "companies"
    t.integer  "level"
    t.integer  "books"
    t.integer  "shares"
    t.integer  "sash_id"
    t.integer  "donations"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

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
