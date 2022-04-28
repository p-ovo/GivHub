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

ActiveRecord::Schema.define(version: 2022_04_28_094821) do

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "organisation_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["organisation_id"], name: "index_activities_on_organisation_id"
  end

  create_table "archetypes", force: :cascade do |t|
    t.integer "personality_id", null: false
    t.integer "trait_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["personality_id"], name: "index_archetypes_on_personality_id"
    t.index ["trait_id"], name: "index_archetypes_on_trait_id"
  end

  create_table "favourites", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "activity_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["activity_id"], name: "index_favourites_on_activity_id"
    t.index ["user_id"], name: "index_favourites_on_user_id"
  end

  create_table "organisations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "personalities", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tags", force: :cascade do |t|
    t.integer "activity_id", null: false
    t.integer "trait_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["activity_id"], name: "index_tags_on_activity_id"
    t.index ["trait_id"], name: "index_tags_on_trait_id"
  end

  create_table "traits", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "personality_id", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["personality_id"], name: "index_users_on_personality_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "activities", "organisations"
  add_foreign_key "archetypes", "personalities"
  add_foreign_key "archetypes", "traits"
  add_foreign_key "favourites", "activities"
  add_foreign_key "favourites", "users"
  add_foreign_key "tags", "activities"
  add_foreign_key "tags", "traits"
  add_foreign_key "users", "personalities"
end
