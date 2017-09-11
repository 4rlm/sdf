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

ActiveRecord::Schema.define(version: 20170911112349) do

  create_table "act_names", force: :cascade do |t|
    t.string "status"
    t.string "act_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["act_name"], name: "index_act_names_on_act_name", unique: true
  end

  create_table "act_namings", force: :cascade do |t|
    t.integer "act_name_id"
    t.string "act_namable_type"
    t.integer "act_namable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["act_namable_type", "act_namable_id"], name: "index_act_namings_on_act_namable_type_and_act_namable_id"
    t.index ["act_name_id", "act_namable_id"], name: "index_act_namings_on_act_name_id_and_act_namable_id", unique: true
    t.index ["act_name_id"], name: "index_act_namings_on_act_name_id"
  end

  create_table "act_numings", force: :cascade do |t|
    t.integer "act_num_id"
    t.string "act_numable_type"
    t.integer "act_numable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["act_num_id", "act_numable_id"], name: "index_act_numings_on_act_num_id_and_act_numable_id", unique: true
    t.index ["act_num_id"], name: "index_act_numings_on_act_num_id"
    t.index ["act_numable_type", "act_numable_id"], name: "index_act_numings_on_act_numable_type_and_act_numable_id"
  end

  create_table "act_nums", force: :cascade do |t|
    t.string "status"
    t.string "source"
    t.string "act_num"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["act_num"], name: "index_act_nums_on_act_num", unique: true
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
    t.index [nil, "addressable_id"], name: "index_addressings_on_addressing_id_and_addressable_id", unique: true
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
    t.index ["phone_id", "phonable_id"], name: "index_phonings_on_phone_id_and_phonable_id", unique: true
    t.index ["phone_id"], name: "index_phonings_on_phone_id"
  end

  create_table "urlings", force: :cascade do |t|
    t.integer "url_id"
    t.string "urlable_type"
    t.integer "urlable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["url_id", "urlable_id"], name: "index_urlings_on_url_id_and_urlable_id", unique: true
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
