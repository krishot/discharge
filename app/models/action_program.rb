class ActionProgram < ActiveRecord::Base
  belongs_to :condition        
  has_many :action_tasks
  
  acts_as_taggable_on :tags  
  
  def to_s
    self.name
  end
end

# create_table "action_programs", :force => true do |t|
#   t.string   "name"
#   t.string   "category"
#   t.text     "description"
#   t.string   "state"
#   t.string   "type"
#   t.string   "therapy_id"
#   t.integer  "condition_id"
#   t.datetime "created_at",   :null => false
#   t.datetime "updated_at",   :null => false
# end
# 