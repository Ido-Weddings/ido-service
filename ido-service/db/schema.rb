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

ActiveRecord::Schema.define(version: 20160515171125) do

  create_table "advises", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "enterprise_id"
    t.string   "content"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["enterprise_id"], name: "index_advises_on_enterprise_id"
    t.index ["user_id"], name: "index_advises_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_enterprises", force: :cascade do |t|
    t.integer  "category_id"
    t.integer  "enterprise_id"
    t.float    "base_price"
    t.string   "description"
    t.integer  "capacity"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["category_id"], name: "index_category_enterprises_on_category_id"
    t.index ["enterprise_id"], name: "index_category_enterprises_on_enterprise_id"
  end

  create_table "category_preferences", force: :cascade do |t|
    t.float    "budget"
    t.integer  "preference_id"
    t.integer  "category_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["category_id"], name: "index_category_preferences_on_category_id"
    t.index ["preference_id"], name: "index_category_preferences_on_preference_id"
  end

  create_table "enterprises", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "telephone"
    t.string   "cellphone"
    t.string   "email"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "register_id"
    t.boolean  "is_freelance"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "enterprise_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["enterprise_id"], name: "index_favorites_on_enterprise_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "friends", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "friend_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_friends_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string   "content"
    t.integer  "user_id"
    t.integer  "enterprise_id"
    t.boolean  "posted_by_user"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["enterprise_id"], name: "index_messages_on_enterprise_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "pictures", force: :cascade do |t|
    t.string   "url"
    t.integer  "user_id"
    t.integer  "category_enterprise_id"
    t.integer  "message_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["category_enterprise_id"], name: "index_pictures_on_category_enterprise_id"
    t.index ["message_id"], name: "index_pictures_on_message_id"
    t.index ["user_id"], name: "index_pictures_on_user_id"
  end

  create_table "preferences", force: :cascade do |t|
    t.integer  "guest_amount"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["user_id"], name: "index_preferences_on_user_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer  "points"
    t.integer  "user_id"
    t.integer  "enterprise_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["enterprise_id"], name: "index_ratings_on_enterprise_id"
    t.index ["user_id"], name: "index_ratings_on_user_id"
  end

  create_table "sub_categories", force: :cascade do |t|
    t.string   "type"
    t.boolean  "active"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_sub_categories_on_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone_number"
    t.date     "wedding_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
