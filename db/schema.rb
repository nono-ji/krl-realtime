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

ActiveRecord::Schema.define(:version => 20130429224854) do

  create_table "stasiuns", :force => true do |t|
    t.string   "kode"
    t.string   "nama"
    t.decimal  "lat",        :precision => 15, :scale => 10
    t.decimal  "lng",        :precision => 15, :scale => 10
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

  add_index "stasiuns", ["kode"], :name => "index_stasiuns_on_kode"
  add_index "stasiuns", ["lat"], :name => "index_stasiuns_on_lat"
  add_index "stasiuns", ["lng"], :name => "index_stasiuns_on_lng"
  add_index "stasiuns", ["nama"], :name => "index_stasiuns_on_nama"

  create_table "status_berhenti", :force => true do |t|
    t.integer  "stasiun_id"
    t.integer  "stasiun_tujuan"
    t.datetime "waktu"
    t.integer  "no_ka"
  end

  add_index "status_berhenti", ["stasiun_id"], :name => "index_status_berhenti_on_stasiun_id"
  add_index "status_berhenti", ["waktu"], :name => "index_status_berhenti_on_waktu"

end
