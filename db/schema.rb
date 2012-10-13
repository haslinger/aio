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

<<<<<<< HEAD
ActiveRecord::Schema.define(:version => 20121013162217) do
=======
<<<<<<< HEAD
ActiveRecord::Schema.define(:version => 20121013142014) do
=======
ActiveRecord::Schema.define(:version => 20121013134912) do
>>>>>>> 7d92e435a51743a56fbfb21ee55977d47c9f11c6
>>>>>>> b3174640f55832a0577499b359ba097f3b75313c

  create_table "assignments", :force => true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "business_processes", :force => true do |t|
    t.integer  "company_id"
    t.integer  "created_by"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "currencies", :force => true do |t|
    t.integer  "company_id"
    t.string   "currency"
    t.string   "shorttext"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "customers", :force => true do |t|
    t.string   "title"
    t.string   "academictitle"
    t.string   "lastname"
    t.string   "firstname"
    t.string   "street"
    t.string   "zipcode"
    t.string   "city"
    t.string   "country"
    t.string   "phone"
    t.string   "fax"
    t.string   "mobil"
    t.string   "email"
    t.string   "taxnumber"
    t.string   "customergroup"
    t.string   "taxcode"
    t.string   "salesman"
    t.text     "comment"
    t.boolean  "deletionflag"
    t.string   "contactperson"
    t.string   "discount"
    t.text     "consignee"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "created_by"
    t.integer  "company_id"
    t.integer  "currency_id"
    t.integer  "paymentterm_id"
  end

  create_table "employments", :force => true do |t|
    t.integer  "user_id"
    t.integer  "company_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "invoice_headers", :force => true do |t|
    t.integer  "company_id"
    t.integer  "customer_id"
    t.string   "reference_number"
    t.integer  "currency_id"
    t.integer  "created_by"
    t.text     "consignee"
    t.integer  "dicount"
    t.integer  "discountvalue_header",   :default => 0, :null => false
    t.integer  "discountvalue_position", :default => 0, :null => false
    t.integer  "taxvalue_full",          :default => 0, :null => false
    t.integer  "taxvalue_half",          :default => 0, :null => false
    t.integer  "valuevalue_netto_full",  :default => 0, :null => false
    t.integer  "value_netto_half",       :default => 0, :null => false
    t.integer  "value_netto",            :default => 0, :null => false
    t.integer  "value_payed",            :default => 0, :null => false
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

  create_table "invoice_positions", :force => true do |t|
    t.integer  "invoice_header_id"
    t.boolean  "textposition"
    t.integer  "product_id"
    t.integer  "quantity",          :default => 0, :null => false
    t.integer  "unit_id"
    t.integer  "discount",          :default => 0, :null => false
    t.integer  "value",             :default => 0, :null => false
    t.integer  "vatrate"
    t.integer  "price",             :default => 0, :null => false
    t.integer  "base_price",        :default => 0, :null => false
    t.text     "description"
    t.integer  "created_by"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  create_table "outgoing_arrows", :force => true do |t|
    t.integer  "step_id"
    t.integer  "successor_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "company_id"
  end

  create_table "paymentterms", :force => true do |t|
    t.integer  "company_id"
    t.string   "term"
    t.string   "shorttext"
    t.integer  "day1"
    t.integer  "percent1"
    t.integer  "day2"
    t.integer  "percent2"
    t.integer  "day3"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "productkey"
    t.string   "shorttext"
    t.text     "description"
    t.string   "productgroup"
    t.string   "eannumber"
    t.string   "taxcode"
    t.boolean  "deletionflag"
    t.string   "baseunit"
    t.decimal  "salesprice",    :precision => 10, :scale => 0
    t.decimal  "purchaseprice", :precision => 10, :scale => 0
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
    t.integer  "created_by"
    t.integer  "company_id"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "step_actions", :force => true do |t|
    t.string   "name"
    t.integer  "step_model_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "step_models", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "steps", :force => true do |t|
    t.string   "name"
    t.integer  "company_id"
    t.integer  "created_by"
    t.string   "step_model_id"
    t.string   "step_action_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "business_process_id"
  end

  create_table "units", :force => true do |t|
    t.integer  "company_id"
    t.string   "unit"
    t.string   "shorttext"
    t.string   "isocode"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "firstname"
    t.string   "lastname"
    t.integer  "function_id"
    t.string   "ancestry"
  end

  add_index "users", ["ancestry"], :name => "index_users_on_ancestry"
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "versions", :force => true do |t|
    t.string   "item_type",      :null => false
    t.integer  "item_id",        :null => false
    t.string   "event",          :null => false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
    t.text     "object_changes"
  end

  add_index "versions", ["item_type", "item_id"], :name => "index_versions_on_item_type_and_item_id"

end
