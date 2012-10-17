class ActionProgram < ActiveRecord::Base
  belongs_to :condition        
  has_many :action_tasks
  
  acts_as_taggable_on :tags  
  
  def self.select_category
    ["Nutrition","Activity","Exercise","Rehabilitation","Medication","Other"]  
  end
  
  def to_s
    self.name
  end 
  
  # Todo add paperclip and profile phot upload
  def cover_url
    case self.category
    when "Nutrition"
      "nutrition.jpeg"   
    when "Activity"
      "activity.jpeg"
    when "Exercise"
      "exercise.jpeg"
    when "Rehabilitation"
      "rehabilitation.jpeg"
    when "Medication"
      "medications.jpeg"
    else
      "activity.jpeg"
    end
  end
  
end

# create_table "action_programs", :force => true do |t|
#   t.string   "name"
#   t.string   "category"
#   t.text     "description"
#   t.string   "state"
#   t.string   "type"
#   t.integer  "condition_id"
#   t.datetime "created_at",   :null => false
#   t.datetime "updated_at",   :null => false
# end
# 