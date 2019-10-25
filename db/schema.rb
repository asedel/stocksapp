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

ActiveRecord::Schema.define(version: 2019_10_31_175508) do

  create_table "stocks", force: :cascade do |t|
    t.string "Symbol"
    t.string "Name"
    t.decimal "LastSale"
    t.decimal "MarketCap"
    t.date "IPOyear"
    t.text "Sector"
    t.string "Industry"
    t.text "SummaryQuote"
    t.text "Exchange"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
