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

ActiveRecord::Schema.define(version: 20190708034503) do

  create_table "vocab", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "Birth n death",           limit: 65535
    t.text "Body n disease-1",        limit: 65535
    t.text "Body n disease-2",        limit: 65535
    t.text "Beautiful mind-1",        limit: 65535
    t.text "Beautiful mind-2",        limit: 65535
    t.text "Shabd -1",                limit: 65535
    t.text "Shabd -2",                limit: 65535
    t.text "Religion",                limit: 65535
    t.text "Rajneeti -1",             limit: 65535
    t.text "Rajneeti-2",              limit: 65535
    t.text "Office office-1",         limit: 65535
    t.text "Office office-2",         limit: 65535
    t.text "Money matters",           limit: 65535
    t.text "Size matters",            limit: 65535
    t.text "50 shades of joy",        limit: 65535
    t.text "Criticism n praise",      limit: 65535
    t.text "Crime n punishment",      limit: 65535
    t.text "War n peace",             limit: 65535
    t.text "Anger kills",             limit: 65535
    t.text "LSD -1",                  limit: 65535
    t.text "LSD-2",                   limit: 65535
    t.text "Food,clothing n shelter", limit: 65535
    t.text "Break n brake",           limit: 65535
    t.text "A Walk through clouds",   limit: 65535
    t.text "Time flies",              limit: 65535
  end

  create_table "vocab2s", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
