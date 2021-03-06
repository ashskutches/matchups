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

ActiveRecord::Schema.define(:version => 20110628062141) do

  create_table "articles", :force => true do |t|
    t.text     "body"
    t.integer  "matchup_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "like_count", :default => 0
  end

  create_table "blogs", :force => true do |t|
    t.text     "body"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_url"
  end

  create_table "character_tips", :force => true do |t|
    t.text     "body",                        :null => false
    t.integer  "user_id",                     :null => false
    t.integer  "character_id",                :null => false
    t.string   "type"
    t.integer  "like_count",   :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "characters", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "feedbacks", :force => true do |t|
    t.text     "body",       :null => false
    t.string   "referer",    :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "likes", :force => true do |t|
    t.integer  "user_id"
    t.integer  "tip_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matchups", :force => true do |t|
    t.integer  "player"
    t.integer  "opponent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tips", :force => true do |t|
    t.text     "body"
    t.integer  "matchup_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "like_count", :default => 0
    t.string   "player"
    t.string   "opponent"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
