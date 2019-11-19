# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_19_001857) do

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories", id: false, force: :cascade do |t|
    t.integer "id"
    t.string "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: :cascade do |t|
    t.string "commenter"
    t.text "body"
    t.integer "article_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["article_id"], name: "index_comments_on_article_id"
  end

  create_table "pub_cats", force: :cascade do |t|
    t.integer "id_publications_id", null: false
    t.integer "id_categories_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["id_categories_id"], name: "index_pub_cats_on_id_categories_id"
    t.index ["id_publications_id"], name: "index_pub_cats_on_id_publications_id"
  end

  create_table "publications", id: false, force: :cascade do |t|
    t.integer "id"
    t.string "title"
    t.boolean "status"
    t.text "articule"
    t.integer "id_users_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["id_users_id"], name: "index_publications_on_id_users_id"
  end

  create_table "users", id: false, force: :cascade do |t|
    t.string "id"
    t.string "email"
    t.string "password"
    t.string "reset_password"
    t.string "ask_reset_password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "comments", "articles"
  add_foreign_key "pub_cats", "id_categories", column: "id_categories_id"
  add_foreign_key "pub_cats", "id_publications", column: "id_publications_id"
  add_foreign_key "publications", "id_users", column: "id_users_id"
end
