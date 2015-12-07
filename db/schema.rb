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

ActiveRecord::Schema.define(version: 20150712180117) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "job_duties", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description"
    t.integer  "job_id",        limit: 8
    t.integer  "display_order", limit: 8
  end

  create_table "jobs", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "company"
    t.string   "type_of_company"
    t.string   "position_title"
    t.string   "logo"
  end

  create_table "miscellaneous_abilities", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description"
  end

  create_table "resumes", force: :cascade do |t|
    t.string   "job_type"
    t.string   "objective"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "samples", force: :cascade do |t|
    t.string   "site_link"
    t.text     "my_contribution"
    t.string   "boxed_logo"
    t.string   "company_working_for"
    t.text     "project_description"
    t.text     "challenges"
    t.string   "screenshot"
    t.string   "mobile_screen_shot"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "service_skills", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "description"
    t.integer  "service_id",     limit: 8
    t.integer  "my_skill_level", limit: 8
    t.integer  "display_order",  limit: 8
  end

  create_table "services", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "description"
  end

  create_table "trainings", force: :cascade do |t|
    t.string   "school"
    t.datetime "end_date"
    t.string   "course_of_study"
    t.string   "level_of_completion"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "tutorials", force: :cascade do |t|
    t.string   "video_embed_code"
    t.string   "topic"
    t.string   "category"
    t.string   "description"
    t.date     "publish_date"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "suffix_name"
    t.string   "email"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
