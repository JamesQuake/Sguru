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

ActiveRecord::Schema.define(version: 20140419185228) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: true do |t|
    t.integer  "synth_id"
    t.integer  "user_id"
    t.string   "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["synth_id"], name: "index_comments_on_synth_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "pictures", force: true do |t|
    t.integer  "synth_id"
    t.string   "images"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pictures", ["synth_id"], name: "index_pictures_on_synth_id", using: :btree

  create_table "sounds", force: true do |t|
    t.integer  "synth_id"
    t.string   "audio_file"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sounds", ["synth_id"], name: "index_sounds_on_synth_id", using: :btree

  create_table "studios", force: true do |t|
    t.string   "name"
    t.string   "summary"
    t.string   "city"
    t.string   "items"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "synths", force: true do |t|
    t.string   "manufacturer"
    t.string   "summary"
    t.string   "modification"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.integer  "studio_id"
    t.string   "name"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["studio_id"], name: "index_users_on_studio_id", using: :btree

end
