class Condition < ActiveRecord::Base
  has_many :action_program
  has_many :patients
end

# create_table "conditions", :force => true do |t|
#   t.string   "name"
#   t.text     "description"
#   t.text     "url"
#   t.string   "state"
#   t.string   "type"
#   t.string   "category"
#   t.string   "icd9"
#   t.integer  "action_program_id"
#   t.integer  "offers_id"
#   t.datetime "created_at",        :null => false
#   t.datetime "updated_at",        :null => false
# end
