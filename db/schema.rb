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

ActiveRecord::Schema.define(version: 20170417033646) do

  create_table "classroom_statuses", force: :cascade do |t|
    t.string   "classroom_status", limit: 4000
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "classrooms", force: :cascade do |t|
    t.string   "classroom_description", limit: 4000
    t.integer  "classroom_status_id",   limit: 4
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "csearches", force: :cascade do |t|
    t.string   "keywords",   limit: 4000
    t.string   "first",      limit: 4000
    t.string   "last",       limit: 4000
    t.string   "phone",      limit: 4000
    t.string   "email",      limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "c_first_name",    limit: 4000
    t.string   "c_last_name",     limit: 4000
    t.text     "address",         limit: 2147483647
    t.string   "phone",           limit: 4000
    t.string   "emergency_phone", limit: 4000
    t.string   "email",           limit: 4000
    t.integer  "membership_id",   limit: 4
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.text     "health_concern",  limit: 2147483647
    t.string   "birthdate",       limit: 4000
    t.string   "ec_relationship", limit: 4000
    t.boolean  "agree"
  end

  create_table "employees", force: :cascade do |t|
    t.string   "e_first_name", limit: 4000
    t.string   "e_last_name",  limit: 4000
    t.text     "address",      limit: 2147483647
    t.string   "phone",        limit: 4000
    t.string   "email",        limit: 4000
    t.integer  "manager_id",   limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "equipmeents", force: :cascade do |t|
    t.string   "eq_desc",             limit: 4000
    t.string   "rental_price",        limit: 4000
    t.integer  "equipment_status_id", limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "equipment", force: :cascade do |t|
    t.string   "equipment_description", limit: 4000
    t.string   "rental_price",          limit: 4000
    t.integer  "equipment_status_id",   limit: 4
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "equipment_checkouts", force: :cascade do |t|
    t.integer  "equipmeent_id",       limit: 4
    t.datetime "checkout_date"
    t.datetime "checkin_date"
    t.integer  "equipment_status_id", limit: 4
    t.integer  "customer_id",         limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "equipment_statuses", force: :cascade do |t|
    t.string   "equipment_status", limit: 4000
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "eventts", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "text",       limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "instructors", force: :cascade do |t|
    t.string   "i_first_name", limit: 4000
    t.string   "i_last_name",  limit: 4000
    t.text     "address",      limit: 2147483647
    t.string   "phone",        limit: 4000
    t.string   "email",        limit: 4000
    t.integer  "manager_id",   limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "managers", force: :cascade do |t|
    t.string   "m_first_name", limit: 4000
    t.string   "m_last_name",  limit: 4000
    t.text     "address",      limit: 2147483647
    t.string   "phone",        limit: 4000
    t.string   "email",        limit: 4000
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "memberships", force: :cascade do |t|
    t.string   "membership_description", limit: 4000
    t.string   "cost",                   limit: 4000
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "private_lessons", force: :cascade do |t|
    t.integer  "instructor_id", limit: 4
    t.integer  "customer_id",   limit: 4
    t.datetime "date"
    t.time     "time",                             precision: 7
    t.string   "cost",          limit: 4000
    t.integer  "classroom_id",  limit: 4
    t.text     "comments",      limit: 2147483647
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
  end

  create_table "program_rosters", force: :cascade do |t|
    t.integer  "program_schedule_id", limit: 4
    t.integer  "customer_id",         limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "program_schedules", force: :cascade do |t|
    t.integer  "program_id",    limit: 4
    t.integer  "instructor_id", limit: 4
    t.datetime "date"
    t.time     "start",                      precision: 7
    t.time     "end",                        precision: 7
    t.integer  "classroom_id",  limit: 4
    t.string   "class_size",    limit: 4000
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "programs", force: :cascade do |t|
    t.string   "program_description", limit: 4000
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 4000, default: "", null: false
    t.string   "encrypted_password",     limit: 4000, default: "", null: false
    t.string   "reset_password_token",   limit: 4000
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,    default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 4000
    t.string   "last_sign_in_ip",        limit: 4000
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
