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

ActiveRecord::Schema.define(:version => 20121007035521) do

  create_table "action_programs", :force => true do |t|
    t.string   "name"
    t.string   "category"
    t.text     "description"
    t.string   "state"
    t.string   "type"
    t.string   "therapy_id"
    t.integer  "condition_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "action_programs", ["condition_id"], :name => "index_action_programs_on_condition_id"

  create_table "action_tasks", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "url"
    t.string   "state"
    t.string   "type"
    t.string   "category"
    t.integer  "action_program_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "action_tasks", ["action_program_id"], :name => "index_action_tasks_on_action_program_id"

  create_table "campaigns", :force => true do |t|
    t.string   "name"
    t.decimal  "budgeted_cost",          :precision => 10, :scale => 0
    t.decimal  "actual_cost",            :precision => 10, :scale => 0
    t.decimal  "expected_revenue",       :precision => 10, :scale => 0
    t.decimal  "number_sent",            :precision => 10, :scale => 0
    t.decimal  "expected_response",      :precision => 10, :scale => 0
    t.string   "parent_id"
    t.string   "campaign_type"
    t.string   "status"
    t.string   "state"
    t.string   "type"
    t.string   "buying_stage"
    t.string   "child_grouper"
    t.string   "substantial_engagement"
    t.string   "important_action"
    t.string   "list_only"
    t.date     "started_on"
    t.date     "ended_on"
    t.string   "target_url"
    t.string   "source_url"
    t.string   "cookie_name"
    t.string   "campaign_id"
    t.integer  "acts_id"
    t.datetime "created_at",                                            :null => false
    t.datetime "updated_at",                                            :null => false
  end

  add_index "campaigns", ["acts_id"], :name => "index_campaigns_on_acts_id"

  create_table "conditions", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "url"
    t.string   "state"
    t.string   "type"
    t.string   "category"
    t.string   "icd9"
    t.integer  "action_program_id"
    t.integer  "offers_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "conditions", ["action_program_id"], :name => "index_conditions_on_action_program_id"
  add_index "conditions", ["offers_id"], :name => "index_conditions_on_offers_id"

  create_table "patient_tasks", :force => true do |t|
    t.string   "name"
    t.string   "state"
    t.integer  "action_task_id"
    t.integer  "patient_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "patient_tasks", ["action_task_id"], :name => "index_patient_tasks_on_action_task_id"
  add_index "patient_tasks", ["patient_id"], :name => "index_patient_tasks_on_patient_id"

  create_table "patients", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.text     "description"
    t.string   "state"
    t.datetime "engaged_at"
    t.datetime "last_contact"
    t.string   "carepass_id"
    t.string   "mhealth_id"
    t.integer  "physician_id"
    t.integer  "conditions_id"
    t.integer  "actions_id"
    t.integer  "alerts_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "patients", ["actions_id"], :name => "index_patients_on_actions_id"
  add_index "patients", ["alerts_id"], :name => "index_patients_on_alerts_id"
  add_index "patients", ["conditions_id"], :name => "index_patients_on_conditions_id"
  add_index "patients", ["physician_id"], :name => "index_patients_on_physician_id"

  create_table "physicians", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.text     "specialty"
    t.string   "state"
    t.integer  "patients_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "physicians", ["patients_id"], :name => "index_physicians_on_patients_id"

end
