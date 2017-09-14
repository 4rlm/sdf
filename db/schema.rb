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

ActiveRecord::Schema.define(version: 20170914173000) do

  create_table "accounts", force: :cascade do |t|
    t.string "act_num"
    t.string "source"
    t.string "act_name"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["act_num"], name: "index_accounts_on_act_num", unique: true
  end

  create_table "addresses", force: :cascade do |t|
    t.string "status"
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "full"
    t.string "pin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["full"], name: "index_addresses_on_full", unique: true
  end

  create_table "addressings", force: :cascade do |t|
    t.integer "address_id"
    t.string "addressable_type"
    t.integer "addressable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_addressings_on_address_id"
    t.index ["addressable_type", "addressable_id"], name: "index_addressings_on_addressable_type_and_addressable_id"
    t.index [nil, "addressable_type", "addressable_id"], name: "addressings_index", unique: true
  end

  create_table "contacts", force: :cascade do |t|
    t.integer "account_id"
    t.string "cont_num"
    t.string "source"
    t.string "status"
    t.string "full_name"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "job_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id", "full_name", "email", "job_title"], name: "contact_index", unique: true
    t.index ["account_id"], name: "index_contacts_on_account_id"
    t.index ["cont_num"], name: "index_contacts_on_cont_num", unique: true
  end

  create_table "phones", force: :cascade do |t|
    t.string "status"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["phone"], name: "index_phones_on_phone", unique: true
  end

  create_table "phonings", force: :cascade do |t|
    t.integer "phone_id"
    t.string "phonable_type"
    t.integer "phonable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["phonable_type", "phonable_id"], name: "index_phonings_on_phonable_type_and_phonable_id"
    t.index ["phone_id", "phonable_type", "phonable_id"], name: "phonings_index", unique: true
    t.index ["phone_id"], name: "index_phonings_on_phone_id"
  end

  create_table "urlings", force: :cascade do |t|
    t.integer "url_id"
    t.string "urlable_type"
    t.integer "urlable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["url_id", "urlable_type", "urlable_id"], name: "urlings_index", unique: true
    t.index ["url_id"], name: "index_urlings_on_url_id"
    t.index ["urlable_type", "urlable_id"], name: "index_urlings_on_urlable_type_and_urlable_id"
  end

  create_table "urls", force: :cascade do |t|
    t.string "status"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["url"], name: "index_urls_on_url", unique: true
  end

end
