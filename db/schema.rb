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

ActiveRecord::Schema.define(version: 2022_03_23_140544) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "podcasters", force: :cascade do |t|
    t.string "name"
    t.string "expertise"
    t.string "podcast_names"
    t.integer "number_of_podcasts"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "podcasts", force: :cascade do |t|
    t.string "podcaster_name"
    t.string "title"
    t.string "topic"
    t.integer "length_in_minutes"
    t.boolean "favorites"
    t.bigint "podcaster_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["podcaster_id"], name: "index_podcasts_on_podcaster_id"
  end

  add_foreign_key "podcasts", "podcasters"
end
