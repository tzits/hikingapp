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

ActiveRecord::Schema.define(version: 20161125215408) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "checklist_items", force: :cascade do |t|
    t.string   "name"
    t.boolean  "checked"
    t.integer  "checklist_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["checklist_id"], name: "index_checklist_items_on_checklist_id", using: :btree
  end

  create_table "checklists", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_checklists_on_user_id", using: :btree
  end

  create_table "comments", force: :cascade do |t|
    t.string   "title"
    t.string   "body"
    t.integer  "rating"
    t.integer  "user_id"
    t.integer  "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_comments_on_item_id", using: :btree
    t.index ["user_id"], name: "index_comments_on_user_id", using: :btree
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "brand"
    t.float    "weight"
    t.float    "size"
    t.string   "unit"
    t.string   "image"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "category_id"
    t.integer  "price"
    t.index ["category_id"], name: "index_items_on_category_id", using: :btree
  end

  create_table "list_contents", force: :cascade do |t|
    t.integer  "list_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_list_contents_on_category_id", using: :btree
    t.index ["list_id"], name: "index_list_contents_on_list_id", using: :btree
  end

  create_table "lists", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_list_category_items", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "category_id"
    t.integer  "list_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_user_list_category_items_on_category_id", using: :btree
    t.index ["item_id"], name: "index_user_list_category_items_on_item_id", using: :btree
    t.index ["list_id"], name: "index_user_list_category_items_on_list_id", using: :btree
    t.index ["user_id"], name: "index_user_list_category_items_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "trail_name"
    t.string   "experience"
    t.string   "gender"
    t.string   "email"
    t.string   "password_digest"
    t.string   "bio"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_foreign_key "checklist_items", "checklists"
  add_foreign_key "checklists", "users"
  add_foreign_key "comments", "items"
  add_foreign_key "comments", "users"
  add_foreign_key "items", "categories"
  add_foreign_key "list_contents", "categories"
  add_foreign_key "list_contents", "lists"
  add_foreign_key "user_list_category_items", "categories"
  add_foreign_key "user_list_category_items", "items"
  add_foreign_key "user_list_category_items", "lists"
  add_foreign_key "user_list_category_items", "users"
end
