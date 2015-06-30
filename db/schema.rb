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

ActiveRecord::Schema.define(version: 20150630164211) do

  create_table "exchanges", force: :cascade do |t|
    t.string   "name"
    t.float    "initial_income"
    t.float    "current_income"
    t.float    "efficiency"
    t.datetime "buy_date"
    t.string   "exchange_type"
    t.float    "dollar_quotation"
    t.float    "euro_quotation"
    t.string   "variation_dollar"
    t.string   "variation_euro"
    t.integer  "Wallet_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.float    "initial_dollar_quotation"
    t.float    "initial_euro_quotation"
    t.float    "discount"
  end

  add_index "exchanges", ["Wallet_id"], name: "index_exchanges_on_Wallet_id"

  create_table "investment_funds", force: :cascade do |t|
    t.string   "name"
    t.date     "buyDate"
    t.float    "admTax"
    t.string   "aditionalInfo"
    t.float    "exitTax"
    t.date     "fundBegin"
    t.string   "manager"
    t.string   "managerContact"
    t.float    "shareValue"
    t.float    "capital"
    t.integer  "wallet_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.decimal  "closing_price"
    t.date     "closing_date"
  end

  add_index "investment_funds", ["wallet_id"], name: "index_investment_funds_on_wallet_id"

  create_table "stocks", force: :cascade do |t|
    t.string   "name"
    t.float    "initial_income"
    t.float    "current_income"
    t.datetime "buy_date"
    t.float    "buy_tax"
    t.float    "amount"
    t.integer  "Wallet_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.decimal  "closing_price"
    t.date     "closing_date"
  end

  add_index "stocks", ["Wallet_id"], name: "index_stocks_on_Wallet_id"

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "wallets", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "user_id"
    t.integer  "stocks_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "wallets", ["stocks_id"], name: "index_wallets_on_stocks_id"
  add_index "wallets", ["user_id"], name: "index_wallets_on_user_id"

end
