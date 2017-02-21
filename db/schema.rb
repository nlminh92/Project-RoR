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

ActiveRecord::Schema.define(version: 20170221131044) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "collections", force: :cascade do |t|
    t.string   "name_collections"
    t.datetime "date_availability"
    t.text     "description"
    t.string   "image"
    t.boolean  "status",            default: false
    t.integer  "brand_id"
    t.integer  "retailler_id"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name_products"
    t.boolean  "status",            default: false
    t.string   "image"
    t.string   "gender"
    t.string   "type"
    t.string   "type_sell"
    t.string   "code"
    t.string   "season"
    t.text     "description"
    t.datetime "date_availability"
    t.string   "country"
    t.decimal  "price"
    t.string   "size"
    t.integer  "discount"
    t.string   "variants"
    t.boolean  "on_sale",           default: false
    t.integer  "brand_id"
    t.integer  "retailler_id"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "company"
    t.string   "website"
    t.text     "address"
    t.integer  "zip_code"
    t.string   "country"
    t.string   "member_registration"
    t.string   "email"
    t.string   "firstname_contact"
    t.string   "lastname_contact"
    t.integer  "phone"
    t.boolean  "group",                  default: false
    t.text     "description"
    t.text     "referrent"
    t.boolean  "activated",              default: false
    t.text     "brands_carried"
    t.boolean  "subscription",           default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "password_digest"
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "remember_digest"
    t.string   "activation_digest"
    t.datetime "activated_at"
    t.boolean  "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
