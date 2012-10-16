class Condition < ActiveRecord::Base
  has_many :action_programs
  has_many :patients                                         
  
  acts_as_taggable_on :tags  
  
  def to_s
    self.name
  end
  
  # Todo add paperclip and condition photo upload
  def cover_url
    ["condition_headache.jpeg","condition_chair.jpeg","condition_time.jpeg","condition_med.jpeg"][rand(4)]  
  end
  
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
