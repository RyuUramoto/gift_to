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

ActiveRecord::Schema.define(version: 20151116055704) do

  create_table "items", force: :cascade do |t|
    t.string   "image_path", limit: 255
    t.string   "material",   limit: 255
    t.integer  "price",      limit: 4
    t.string   "category",   limit: 255
    t.integer  "shop_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "items", ["shop_id"], name: "index_items_on_shop_id", using: :btree

  create_table "shop_details", force: :cascade do |t|
    t.string   "tel",         limit: 255
    t.string   "store_hours", limit: 255
    t.string   "holiday",     limit: 255
    t.string   "web",         limit: 255
    t.text     "abstract",    limit: 65535
    t.string   "station",     limit: 255
    t.integer  "shop_id",     limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "shop_details", ["shop_id"], name: "index_shop_details_on_shop_id", using: :btree

  create_table "shops", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.string   "image_path",     limit: 255
    t.string   "address",        limit: 255
    t.float    "latitude",       limit: 24
    t.float    "longitude",      limit: 24
    t.string   "characteristic", limit: 255
    t.string   "category",       limit: 255
    t.string   "situation",      limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_foreign_key "items", "shops"
  add_foreign_key "shop_details", "shops"
end
