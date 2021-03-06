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

ActiveRecord::Schema.define(version: 20170806060259) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "doctors", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "email"
    t.string   "mob_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "specialization_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "sex"
    t.string   "mob_number"
    t.string   "email"
    t.string   "blood_type"
    t.integer  "doctor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "prescription"
    t.string   "description"
    t.boolean  "starred"
  end

  create_table "quotes", force: :cascade do |t|
    t.string  "procedure"
    t.string  "cost"
    t.string  "remark"
    t.integer "patient_id"
  end

  create_table "specializations", force: :cascade do |t|
    t.string   "name"
    t.string   "procedure"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
