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

ActiveRecord::Schema.define(version: 2019_03_26_183637) do

  create_table "camps", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.datetime "is_hidden", null: false
    t.boolean "del", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "competitions", force: :cascade do |t|
    t.integer "camp_id"
    t.string "name", null: false
    t.text "description"
    t.string "image"
    t.boolean "del", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["camp_id"], name: "index_competitions_on_camp_id"
  end

  create_table "conversations", force: :cascade do |t|
    t.integer "camp_id"
    t.string "name", null: false
    t.text "description"
    t.boolean "del", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["camp_id"], name: "index_conversations_on_camp_id"
  end

  create_table "courses", force: :cascade do |t|
    t.integer "camp_id"
    t.string "name", null: false
    t.text "description"
    t.string "image"
    t.boolean "is_locked", default: true, null: false
    t.boolean "del", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["camp_id"], name: "index_courses_on_camp_id"
  end

  create_table "live_broadcasts", force: :cascade do |t|
    t.integer "camp_id"
    t.string "name", null: false
    t.text "description"
    t.boolean "del", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["camp_id"], name: "index_live_broadcasts_on_camp_id"
  end

  create_table "meetup_groups", force: :cascade do |t|
    t.integer "camp_id"
    t.string "name", null: false
    t.text "description"
    t.string "meetup_type"
    t.string "meetup_time"
    t.string "time_info"
    t.string "city"
    t.string "location"
    t.boolean "del", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["camp_id"], name: "index_meetup_groups_on_camp_id"
  end

  create_table "posts", force: :cascade do |t|
    t.integer "syllabus_id"
    t.string "name", null: false
    t.text "description"
    t.boolean "del", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["syllabus_id"], name: "index_posts_on_syllabus_id"
  end

  create_table "signin_logs", force: :cascade do |t|
    t.integer "user_id"
    t.string "ip", null: false
    t.string "user_agent"
    t.string "browser"
    t.string "sys_os"
    t.string "hostname"
    t.string "region"
    t.string "country"
    t.string "city"
    t.string "loc"
    t.string "org"
    t.integer "role", default: 0, null: false
    t.boolean "del", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ip"], name: "index_signin_logs_on_ip"
    t.index ["user_id"], name: "index_signin_logs_on_user_id"
  end

  create_table "syllabuses", force: :cascade do |t|
    t.integer "course_id"
    t.string "name", null: false
    t.text "description"
    t.boolean "del", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_syllabuses_on_course_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.integer "post_id"
    t.text "content", null: false
    t.text "description"
    t.string "image"
    t.boolean "del", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_tasks_on_post_id"
  end

  create_table "user_campships", force: :cascade do |t|
    t.integer "user_id"
    t.integer "camp_id"
    t.datetime "start_at"
    t.datetime "expired_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["camp_id"], name: "index_user_campships_on_camp_id"
    t.index ["user_id"], name: "index_user_campships_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.boolean "admin", default: false, null: false
    t.boolean "del", default: false, null: false
    t.boolean "activated", default: false, null: false
    t.datetime "activated_at"
    t.string "activation_digest"
    t.string "remember_digest"
    t.string "reset_digest"
    t.datetime "reset_sent_at"
    t.string "avatar"
    t.string "github_name"
    t.string "wechat"
    t.integer "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "works", force: :cascade do |t|
    t.integer "competition_id"
    t.string "name", null: false
    t.text "description"
    t.string "image"
    t.string "wechat_code"
    t.boolean "del", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["competition_id"], name: "index_works_on_competition_id"
  end

end
