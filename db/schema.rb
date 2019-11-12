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

ActiveRecord::Schema.define(version: 2019_11_12_140733) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.integer "unit_price"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "product_sku"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_places", id: false, force: :cascade do |t|
    t.bigint "place_id", null: false
    t.bigint "category_id", null: false
    t.index ["category_id", "place_id"], name: "index_categories_places_on_category_id_and_place_id"
    t.index ["place_id", "category_id"], name: "index_categories_places_on_place_id_and_category_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.string "subtitle"
    t.text "content"
    t.datetime "event_date"
    t.string "address"
    t.text "details"
    t.string "price_indication"
    t.string "state"
    t.string "tickets_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "photo"
    t.boolean "main", default: false
    t.string "imageable_type"
    t.bigint "imageable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["imageable_type", "imageable_id"], name: "index_images_on_imageable_type_and_imageable_id"
  end

  create_table "order_lines", force: :cascade do |t|
    t.bigint "order_id"
    t.integer "amount_of_products"
    t.integer "price"
    t.string "productable_type"
    t.bigint "productable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "product_sku"
    t.index ["order_id"], name: "index_order_lines_on_order_id"
    t.index ["productable_type", "productable_id"], name: "index_order_lines_on_productable_type_and_productable_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "state", default: "open"
    t.integer "total_price"
    t.string "user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "places", force: :cascade do |t|
    t.string "title"
    t.string "subtitle"
    t.text "content"
    t.string "address"
    t.string "phone_number"
    t.string "website"
    t.text "opening_hours"
    t.string "price_indication"
    t.string "booking_link"
    t.string "deliveroo_link"
    t.boolean "brunch", default: false
    t.boolean "terrace", default: false
    t.boolean "monday_night", default: false
    t.boolean "sunday_night", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
  end

  create_table "places_tags", id: false, force: :cascade do |t|
    t.bigint "place_id", null: false
    t.bigint "tag_id", null: false
    t.index ["place_id", "tag_id"], name: "index_places_tags_on_place_id_and_tag_id"
    t.index ["tag_id", "place_id"], name: "index_places_tags_on_tag_id_and_place_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "order_lines", "orders"
end
