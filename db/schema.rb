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

ActiveRecord::Schema.define(version: 2021_05_23_042111) do

  create_table "auction_members", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "auction_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["auction_id"], name: "index_auction_members_on_auction_id"
    t.index ["user_id"], name: "index_auction_members_on_user_id"
  end

  create_table "auctions", force: :cascade do |t|
    t.string "description"
    t.integer "type"
    t.string "entry_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bids", force: :cascade do |t|
    t.integer "auction_member_id", null: false
    t.string "bid"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["auction_member_id"], name: "index_bids_on_auction_member_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "votes", force: :cascade do |t|
    t.integer "bid_id", null: false
    t.integer "auction_member_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["auction_member_id"], name: "index_votes_on_auction_member_id"
    t.index ["bid_id"], name: "index_votes_on_bid_id"
  end

  add_foreign_key "auction_members", "auctions"
  add_foreign_key "auction_members", "users"
  add_foreign_key "bids", "auction_members"
  add_foreign_key "votes", "auction_members"
  add_foreign_key "votes", "bids"
end
