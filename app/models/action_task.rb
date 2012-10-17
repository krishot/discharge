class ActionTask < ActiveRecord::Base
  belongs_to :action_program      
  has_many :patient_tasks                
  
  def self.select_category
    ["One Time","Recurring","Required"]  
  end
  
  def to_s
    self.name
  end
  
  def cover_url
    case self.category
    when "One Time"
      "condition_time.jpeg"   
    when "Recurring"
      "condition_time.jpeg"
    when "Required"
      "condition_time.jpeg"
    else
      "condition_time.jpeg"
    end
  end
  
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