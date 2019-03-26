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

ActiveRecord::Schema.define(version: 2019_03_26_190004) do

  create_table "camps", force: :cascade do |t|
    t.string "title", null: false
    t.boolean "del", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer "work_id"
    t.integer "competition_id"
    t.text "description", null: false
    t.boolean "del", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["competition_id"], name: "index_comments_on_competition_id"
    t.index ["work_id"], name: "index_comments_on_work_id"
  end

  create_table "competitions", force: :cascade do |t|
    t.integer "camp_id"
    t.string "title", null: false
    t.text "description"
    t.string "image"
    t.boolean "del", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["camp_id"], name: "index_competitions_on_camp_id"
  end

  create_table "conversations", force: :cascade do |t|
    t.integer "camp_id"
    t.string "title", null: false
    t.text "description"
    t.boolean "del", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["camp_id"], name: "index_conversations_on_camp_id"
  end

  create_table "course_relationships", force: :cascade do |t|
    t.integer "user_id"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_course_relationships_on_course_id"
    t.index ["user_id"], name: "index_course_relationships_on_user_id"
  end

  create_table "courses", force: :cascade do |t|
    t.integer "user_id"
    t.string "title", null: false
    t.text "description"
    t.string "image"
    t.boolean "del", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_courses_on_user_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "post_id"
    t.boolean "del", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_favorites_on_post_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "task_id"
    t.boolean "del", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["task_id"], name: "index_likes_on_task_id"
  end

  create_table "lives", force: :cascade do |t|
    t.integer "camp_id"
    t.string "name", null: false
    t.boolean "del", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["camp_id"], name: "index_lives_on_camp_id"
  end

  create_table "meetup_groups", force: :cascade do |t|
    t.integer "user_id"
    t.string "title", null: false
    t.string "type"
    t.string "time_limit"
    t.string "time_info"
    t.string "city"
    t.string "location"
    t.boolean "del", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_meetup_groups_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.integer "syllabus_id"
    t.string "title", null: false
    t.text "description"
    t.string "remark"
    t.boolean "del", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["syllabus_id"], name: "index_posts_on_syllabus_id"
  end

  create_table "replays", force: :cascade do |t|
    t.integer "user_id"
    t.integer "conversation_id"
    t.text "description", null: false
    t.boolean "del", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["conversation_id"], name: "index_replays_on_conversation_id"
    t.index ["user_id"], name: "index_replays_on_user_id"
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
    t.string "title", null: false
    t.text "description"
    t.boolean "del", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_syllabuses_on_course_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.integer "user_id"
    t.integer "post_id"
    t.text "description", null: false
    t.string "image"
    t.string "remark"
    t.boolean "del", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_tasks_on_post_id"
    t.index ["user_id"], name: "index_tasks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer "camp_id"
    t.integer "course_id"
    t.integer "work_id"
    t.string "name", null: false
    t.string "email", null: false
    t.boolean "admin", default: false, null: false
    t.boolean "del", default: false, null: false
    t.string "password_digest", null: false
    t.boolean "activated", default: false, null: false
    t.string "activation_digest"
    t.datetime "activated_at"
    t.string "remember_digest"
    t.string "reset_digest"
    t.datetime "reset_sent_at"
    t.string "avatar"
    t.string "github_name"
    t.string "wechat"
    t.datetime "pay_at"
    t.datetime "expired_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["camp_id"], name: "index_users_on_camp_id"
    t.index ["course_id"], name: "index_users_on_course_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["work_id"], name: "index_users_on_work_id"
  end

  create_table "votes", force: :cascade do |t|
    t.integer "work_id"
    t.integer "competition_id"
    t.boolean "del", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["competition_id"], name: "index_votes_on_competition_id"
    t.index ["work_id"], name: "index_votes_on_work_id"
  end

  create_table "work_relationships", force: :cascade do |t|
    t.integer "user_id"
    t.integer "work_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_work_relationships_on_user_id"
    t.index ["work_id"], name: "index_work_relationships_on_work_id"
  end

  create_table "works", force: :cascade do |t|
    t.integer "user_id"
    t.integer "competition_id"
    t.string "image"
    t.string "title", null: false
    t.text "change_log"
    t.string "wechat_code"
    t.string "remark"
    t.boolean "del", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["competition_id"], name: "index_works_on_competition_id"
    t.index ["user_id"], name: "index_works_on_user_id"
  end

end
