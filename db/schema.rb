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

ActiveRecord::Schema.define(version: 20170128121110) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.integer  "sum"
    t.integer  "percent"
    t.date     "birth_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "phone"
    t.string   "vorname"
    t.string   "patronymic"
    t.date     "date_in"
    t.string   "email"
    t.integer  "status"
    t.string   "comment"
  end

  create_table "technpassports", force: :cascade do |t|
    t.string   "customer"
    t.date     "date_in"
    t.date     "date_out"
    t.string   "product"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "email"
    t.string   "phone"
    t.string   "name"
    t.string   "vorname"
    t.string   "patronymic"
    t.string   "condition"
    t.integer  "wear"
    t.string   "guarantee"
    t.string   "damage"
    t.string   "manipulation1"
    t.string   "manipulation2"
    t.string   "manipulation3"
    t.string   "manipulation4"
    t.integer  "price1"
    t.integer  "price2"
    t.integer  "price3"
    t.integer  "price4"
    t.integer  "amount"
    t.integer  "discount"
    t.integer  "payment"
    t.integer  "debt"
    t.string   "time_weared"
    t.string   "care_symbols"
    t.string   "undergo"
    t.string   "effects"
    t.string   "spots"
    t.string   "origin_spots"
    t.string   "other_defects"
    t.string   "pr_scin_color"
    t.string   "pr_fur_color"
    t.string   "f_mechanical_damage"
    t.string   "worn_pl"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "rank"
    t.string   "email"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end
