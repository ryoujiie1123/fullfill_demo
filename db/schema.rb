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

ActiveRecord::Schema.define(version: 20200526054113) do

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "max_seat"
    t.integer "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.string "image_name"
  end

  create_table "matchings", force: :cascade do |t|
    t.integer "client_id"
    t.integer "user_id"
    t.integer "seet_id"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seets", force: :cascade do |t|
    t.integer "client_id"
    t.integer "remain_seat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "takings", force: :cascade do |t|
    t.integer "client_id"
    t.integer "user_id"
    t.integer "seet_id"
    t.integer "seet_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "email"
    t.integer "sex"
    t.string "adress"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password"
  end

end
