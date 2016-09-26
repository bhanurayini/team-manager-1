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

ActiveRecord::Schema.define(version: 20160926153332) do

  create_table "addresses", force: :cascade do |t|
    t.string   "addr1"
    t.string   "addr2"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "zip"
    t.string   "address_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "addresses_people", id: false, force: :cascade do |t|
    t.integer "person_id",  null: false
    t.integer "address_id", null: false
  end

  create_table "children", force: :cascade do |t|
    t.integer  "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_children_on_person_id"
  end

  create_table "children_parents", id: false, force: :cascade do |t|
    t.integer "parent_id", null: false
    t.integer "child_id",  null: false
  end

  create_table "coaches", force: :cascade do |t|
    t.string   "license_num"
    t.date     "license_exp"
    t.integer  "person_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["person_id"], name: "index_coaches_on_person_id"
  end

  create_table "events", force: :cascade do |t|
    t.string   "event_name"
    t.string   "event_type"
    t.datetime "event_start_time"
    t.datetime "event_end_time"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "events_organizations", id: false, force: :cascade do |t|
    t.integer "event_id",        null: false
    t.integer "organization_id", null: false
  end

  create_table "events_teams", id: false, force: :cascade do |t|
    t.integer "event_id", null: false
    t.integer "team_id",  null: false
  end

  create_table "fees", force: :cascade do |t|
    t.string   "fee_amt"
    t.string   "paid_amt"
    t.datetime "created_on"
    t.datetime "paid_on"
    t.integer  "people_id"
    t.integer  "player_stats_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["people_id"], name: "index_fees_on_people_id"
    t.index ["player_stats_id"], name: "index_fees_on_player_stats_id"
  end

  create_table "fees_people", id: false, force: :cascade do |t|
    t.integer "person_id", null: false
    t.integer "fee_id",    null: false
  end

  create_table "managers", force: :cascade do |t|
    t.integer  "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_managers_on_person_id"
  end

  create_table "managers_teams", id: false, force: :cascade do |t|
    t.integer "manager_id", null: false
    t.integer "team_id",    null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "org_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organizations_staffs", id: false, force: :cascade do |t|
    t.integer "staff_id",        null: false
    t.integer "organization_id", null: false
  end

  create_table "organizations_teams", id: false, force: :cascade do |t|
    t.integer "team_id",         null: false
    t.integer "organization_id", null: false
  end

  create_table "parents", force: :cascade do |t|
    t.integer  "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_parents_on_person_id"
  end

  create_table "payment_types", force: :cascade do |t|
    t.string   "payment_type"
    t.string   "check_num"
    t.string   "cc_num"
    t.string   "acct_num"
    t.string   "routing_num"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "dob"
    t.string   "gender"
    t.string   "ethnicity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people_phones", id: false, force: :cascade do |t|
    t.integer "person_id", null: false
    t.integer "phone_id",  null: false
  end

  create_table "people_teams", id: false, force: :cascade do |t|
    t.integer "person_id", null: false
    t.integer "team_id",   null: false
  end

  create_table "phones", force: :cascade do |t|
    t.string   "phone_number"
    t.string   "phone_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "player_stats", force: :cascade do |t|
    t.string   "jersey_number"
    t.text     "player_bio"
    t.integer  "height"
    t.integer  "weight"
    t.integer  "person_id"
    t.integer  "team_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["person_id"], name: "index_player_stats_on_person_id"
    t.index ["team_id"], name: "index_player_stats_on_team_id"
  end

  create_table "staffs", force: :cascade do |t|
    t.integer  "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_staffs_on_person_id"
  end

  create_table "stat_records", force: :cascade do |t|
    t.text     "record_value"
    t.string   "record_type"
    t.datetime "record_date"
    t.integer  "player_stats_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["player_stats_id"], name: "index_stat_records_on_player_stats_id"
  end

  create_table "team_has_coaches", force: :cascade do |t|
    t.string   "coach_type"
    t.integer  "person_id"
    t.integer  "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_team_has_coaches_on_person_id"
    t.index ["team_id"], name: "index_team_has_coaches_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string   "team_name"
    t.string   "age_group"
    t.integer  "wins"
    t.integer  "loses"
    t.integer  "ties"
    t.date     "team_start"
    t.date     "team_end"
    t.boolean  "is_archived"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
