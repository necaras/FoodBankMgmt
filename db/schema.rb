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

ActiveRecord::Schema.define(:version => 20120229224020) do

  create_table "client2ctypes", :force => true do |t|
    t.integer  "client_id"
    t.integer  "ctype_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "client2ctypes", ["client_id"], :name => "index_client2ctypes_on_client_id"
  add_index "client2ctypes", ["ctype_id"], :name => "index_client2ctypes_on_ctype_id"

  create_table "clients", :force => true do |t|
    t.string   "healthinfo"
    t.string   "gender"
    t.string   "firstname"
    t.string   "middlename"
    t.string   "lastname"
    t.date     "birthdate"
    t.string   "emailaddress"
    t.string   "ahcnumber"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "family_id"
  end

  create_table "cnotes", :force => true do |t|
    t.text     "note"
    t.date     "notedate"
    t.integer  "client_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "cnotes", ["client_id"], :name => "index_cnotes_on_client_id"

  create_table "communities", :force => true do |t|
    t.string   "name"
    t.string   "jurisdiction_description"
    t.integer  "location_id"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "communities", ["location_id"], :name => "index_communities_on_location_id"

  create_table "ctypes", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "donees", :force => true do |t|
    t.string   "name"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "unit"
    t.string   "address"
    t.string   "emailaddress"
    t.string   "contact"
    t.integer  "location_id"
    t.integer  "dtype_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "donees", ["dtype_id"], :name => "index_donees_on_dtype_id"
  add_index "donees", ["location_id"], :name => "index_donees_on_location_id"

  create_table "donors", :force => true do |t|
    t.string   "name"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "unit"
    t.string   "address"
    t.string   "emailaddress"
    t.string   "contact"
    t.integer  "location_id"
    t.integer  "dtype_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "donors", ["dtype_id"], :name => "index_donors_on_dtype_id"
  add_index "donors", ["location_id"], :name => "index_donors_on_location_id"

  create_table "dtypes", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "families", :force => true do |t|
    t.string   "comment"
    t.boolean  "redflag"
    t.string   "phone1"
    t.string   "phone2"
    t.integer  "primaryclient_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "fstate_id"
    t.integer  "household_id"
  end

  add_index "families", ["fstate_id"], :name => "index_families_on_fstate_id"
  add_index "families", ["primaryclient_id"], :name => "index_families_on_primaryclient_id"

  create_table "fstates", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "households", :force => true do |t|
    t.string   "postalcode"
    t.string   "address"
    t.string   "unit"
    t.integer  "community_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "households", ["community_id"], :name => "index_households_on_community_id"

  create_table "locations", :force => true do |t|
    t.string   "city"
    t.string   "province"
    t.string   "country"
    t.string   "jurisdiction_description"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

end
