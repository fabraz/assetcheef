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

ActiveRecord::Schema.define(version: 20150613184857) do

  create_table "asset_stocks", force: :cascade do |t|
    t.string   "stock_local"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "assets", force: :cascade do |t|
    t.string   "asset_type"
    t.decimal  "asset_price"
    t.integer  "asset_quantity"
    t.decimal  "unique_rate"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "wallet_id"
  end

  add_index "assets", ["wallet_id"], name: "index_assets_on_wallet_id"

  create_table "users", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "wallets", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end