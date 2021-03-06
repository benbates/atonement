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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130627185156) do

  create_table "activities", :force => true do |t|
    t.integer  "user_id"
    t.string   "activity_type"
    t.datetime "activity_date"
    t.time     "duration"
    t.integer  "calories"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "uri"
  end

  create_table "reminder_phrases", :force => true do |t|
    t.string   "phrase"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sin_types", :force => true do |t|
    t.string   "name"
    t.integer  "calories"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "phrase"
  end

  create_table "sins", :force => true do |t|
    t.datetime "reminder_time"
    t.integer  "user_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "phone"
    t.integer  "quantity"
    t.date     "date"
    t.integer  "sin_type_id"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "rk_token"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.boolean  "admin"
    t.string   "remember_token"
    t.string   "password_digest"
    t.date     "last_sync"
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
