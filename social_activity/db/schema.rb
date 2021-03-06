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

ActiveRecord::Schema.define(version: 20140511155843) do

  create_table "activities", force: true do |t|
    t.string   "name"
    t.string   "place_name"
    t.text     "place_adress"
    t.date     "start_date"
    t.date     "finish_date"
    t.string   "paid"
    t.string   "age_group"
    t.string   "gender"
    t.text     "explain"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "activity_images", force: true do |t|
    t.integer  "activity_id"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.text     "body"
    t.integer  "user_id"
    t.string   "user_profil_image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "commentts", force: true do |t|
    t.integer  "user_id"
    t.integer  "activity_id"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "friends", force: true do |t|
    t.integer  "user_id"
    t.integer  "friend_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", force: true do |t|
    t.string   "adress"
    t.boolean  "is_user_or_activity"
    t.integer  "belong_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "joined_activities", force: true do |t|
    t.integer  "user_id"
    t.integer  "activity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "joined_think_activities", force: true do |t|
    t.integer  "user_id"
    t.integer  "activity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_images", force: true do |t|
    t.integer  "user_id"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "lastname"
    t.date     "birth_date"
    t.string   "gender"
    t.string   "profil_image"
    t.text     "adress"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "yorums", force: true do |t|
    t.string   "user_id"
    t.string   "activity_id"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
