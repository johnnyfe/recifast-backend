# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_09_29_181143) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.integer "descriptionrating"
    t.bigint "user_id", null: false
    t.bigint "recipe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipe_id"], name: "index_comments_on_recipe_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "cooking_lists", force: :cascade do |t|
    t.bigint "recipe_id", null: false
    t.bigint "ingredient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "ingredient_portion"
    t.integer "ingredient_quantity"
    t.index ["ingredient_id"], name: "index_cooking_lists_on_ingredient_id"
    t.index ["recipe_id"], name: "index_cooking_lists_on_recipe_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.integer "calories"
    t.string "category"
    t.string "image_url"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.integer "preparation_time"
    t.integer "calories"
    t.string "image_url"
    t.string "video_url"
    t.string "instructions"
    t.string "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.index ["user_id"], name: "index_recipes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "image_url"
    t.string "bio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "comments", "recipes"
  add_foreign_key "comments", "users"
  add_foreign_key "cooking_lists", "ingredients"
  add_foreign_key "cooking_lists", "recipes"
  add_foreign_key "recipes", "users"
end
