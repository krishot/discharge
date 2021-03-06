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

ActiveRecord::Schema.define(:version => 20121017185746) do

  create_table "action_programs", :force => true do |t|
    t.string   "name"
    t.string   "category"
    t.text     "description"
    t.string   "state"
    t.string   "type"
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
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.datetime "start_at"
    t.datetime "next_at"
    t.datetime "end_at"
    t.string   "schedule"
    t.string   "rules"
    t.integer  "iterations",        :default => 0
    t.integer  "remaining",         :default => 0
  end

  add_index "action_tasks", ["action_program_id"], :name => "index_action_tasks_on_action_program_id"

  create_table "conditions", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "url"
    t.string   "state"
    t.string   "type"
    t.string   "category"
    t.string   "icd9"
    t.integer  "action_program_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "conditions", ["action_program_id"], :name => "index_conditions_on_action_program_id"

  create_table "patient_tasks", :force => true do |t|
    t.string   "name"
    t.string   "state"
    t.integer  "action_task_id"
    t.integer  "patient_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.datetime "start_at"
    t.datetime "next_at"
    t.datetime "end_at"
    t.string   "schedule"
    t.string   "rules"
    t.integer  "iterations",     :default => 0
    t.integer  "remaining",      :default => 0
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
    t.integer  "condition_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "patients", ["condition_id"], :name => "index_patients_on_condition_id"
  add_index "patients", ["physician_id"], :name => "index_patients_on_physician_id"

  create_table "physicians", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.text     "specialty"
    t.string   "state"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       :limit => 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

end
