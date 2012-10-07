class ActionTask < ActiveRecord::Base
  belongs_to :action_program      
  has_many :patient_tasks
end

# create_table "action_tasks", :force => true do |t|
#   t.string   "name"
#   t.text     "description"
#   t.string   "url"
#   t.string   "state"
#   t.string   "type"
#   t.string   "category"
#   t.integer  "action_program_id"
#   t.datetime "created_at",        :null => false
#   t.datetime "updated_at",        :null => false
# end