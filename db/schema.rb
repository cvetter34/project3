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

ActiveRecord::Schema.define(version: 20140428032241) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conversations", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", force: true do |t|
    t.string   "sender_id"
    t.string   "recipient_id"
    t.boolean  "sender_deleted"
    t.boolean  "recipient_deleted"
    t.string   "subject",                             null: false
    t.text     "body"
    t.datetime "read_at"
    t.string   "container",         default: "draft"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tools", force: true do |t|
    t.string   "name"
    t.string   "category"
    t.text     "description"
    t.text     "avatar"
    t.integer  "user_id"
    t.boolean  "availability", default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tools", ["user_id"], name: "index_tools_on_user_id", using: :btree

  create_table "transactions", force: true do |t|
    t.integer  "user_id"
    t.integer  "tool_id"
    t.datetime "transaction_date"
    t.datetime "rent_date"
    t.datetime "return_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "transactions", ["tool_id"], name: "index_transactions_on_tool_id", using: :btree
  add_index "transactions", ["user_id"], name: "index_transactions_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password"
    t.string   "password_confirmation"
    t.string   "salt"
    t.string   "fish"
    t.string   "first_name"
    t.string   "last_name"
    t.text     "description"
    t.string   "avatar"
    t.string   "facebook"
    t.string   "mobile_number"
    t.string   "street_address2"
    t.string   "street_address1"
    t.string   "city"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
