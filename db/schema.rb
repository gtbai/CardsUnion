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

ActiveRecord::Schema.define(:version => 20151223182002317) do

  create_table "accounts", :force => true do |t|
    t.string   "email"
    t.string   "phone"
    t.string   "password_digest"
    t.string   "user_type"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.string   "auth_token"
    t.integer  "user_id"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
  end

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "cards", :force => true do |t|
    t.integer  "level",       :limit => 255, :default => 1
    t.decimal  "balance"
    t.integer  "points",                     :default => 0
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.integer  "merchant_id"
    t.integer  "consumer_id"
  end

  create_table "consumers", :force => true do |t|
    t.string   "nickname"
    t.string   "gender"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "fees", :force => true do |t|
    t.boolean  "fee_type"
    t.decimal  "original_amount"
    t.integer  "card_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.decimal  "discount"
    t.text     "remark"
  end

  create_table "follows", :force => true do |t|
    t.integer  "followable_id",                      :null => false
    t.string   "followable_type",                    :null => false
    t.integer  "follower_id",                        :null => false
    t.string   "follower_type",                      :null => false
    t.boolean  "blocked",         :default => false, :null => false
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  add_index "follows", ["followable_id", "followable_type"], :name => "fk_followables"
  add_index "follows", ["follower_id", "follower_type"], :name => "fk_follows"

  create_table "merchants", :force => true do |t|
    t.string   "store_name"
    t.string   "store_type"
    t.text     "introduction"
    t.string   "address"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.string   "store_image"
    t.integer  "level_1",      :default => 100
    t.integer  "level_2",      :default => 200
    t.decimal  "discount_1",   :default => 0.95
    t.decimal  "discount_2",   :default => 0.9
    t.decimal  "discount_3",   :default => 0.85
  end

  create_table "messages", :force => true do |t|
    t.text     "content"
    t.integer  "consumer_id"
    t.integer  "merchant_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "messages", ["consumer_id"], :name => "index_messages_on_consumer_id"
  add_index "messages", ["merchant_id"], :name => "index_messages_on_merchant_id"

  create_table "notices", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "account_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "notice_image"
  end

  add_index "notices", ["account_id"], :name => "index_notices_on_user_id"

  create_table "rates", :force => true do |t|
    t.integer  "rater_id"
    t.integer  "rateable_id"
    t.string   "rateable_type"
    t.float    "stars",         :null => false
    t.string   "dimension"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "rates", ["rateable_id", "rateable_type"], :name => "index_rates_on_rateable_id_and_rateable_type"
  add_index "rates", ["rater_id"], :name => "index_rates_on_rater_id"

  create_table "rating_caches", :force => true do |t|
    t.integer  "cacheable_id"
    t.string   "cacheable_type"
    t.float    "avg",            :null => false
    t.integer  "qty",            :null => false
    t.string   "dimension"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "rating_caches", ["cacheable_id", "cacheable_type"], :name => "index_rating_caches_on_cacheable_id_and_cacheable_type"

end
