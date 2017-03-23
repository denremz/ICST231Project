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

ActiveRecord::Schema.define(version: 20170321141859) do

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.decimal  "srp"
    t.decimal  "retail_price"
    t.decimal  "distributor_price"
    t.integer  "num_stock"
    t.integer  "reserved"
    t.string   "image"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.string   "name"
    t.string   "product"
    t.integer  "product_id"
    t.integer  "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "status"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "account_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "first"
    t.string   "middle"
    t.string   "last"
    t.string   "sex"
    t.string   "address"
  end

end
