# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121028103132) do

  create_table "bikes", :force => true do |t|
    t.string   "make"
    t.string   "model"
    t.integer  "year"
    t.integer  "mileage"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rides", :force => true do |t|
    t.string   "name"
    t.time     "start"
    t.time     "end"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.date     "dob"
    t.string   "city"
    t.string   "street"
    t.string   "state"
    t.integer  "years_riding"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end