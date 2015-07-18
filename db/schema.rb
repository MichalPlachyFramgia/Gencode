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

ActiveRecord::Schema.define(version: 20150715120128) do
# in tags
  create_table "attibutes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
# CSS tags
  create_table "properties", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
# relation tags
  create_table "relations", force: :cascade do |t|
    t.string   "type" # type is an attribute, a property or another tag
    t.boolean  "has"
    t.integer  "father_id" # tag id
    t.integer  "son_id" # attribute , property or tag id
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
# tags
  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.boolean  "enclose"
    t.integer  "type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
# type of tags
  create_table "types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
