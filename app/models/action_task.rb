class ActionTask < ActiveRecord::Base
  # https://github.com/seejohnrun/ice_cube
  include IceCube
  serialize :schedule, Hash
  
  belongs_to :action_program      
  has_many :patient_tasks                
  
  
  
  def schedule=(new_schedule)
    write_attribute(:schedule, new_schedule.to_hash)
  end

  def schedule
    Schedule.from_hash(read_attribute(:schedule)) || Schedule.new()
  end

  def events(at_time=nil, days=88)
    if at_time.is_a?(Time)
      self.schedule.occurs_at?(at_time)
    elsif at_time.is_a?(Date) 
      self.schedule.occurs_on?(at_time)
    else
      self.schedule.occurrences(Date.today+days) 
    end 
  end
  
  def update_from_schedule
    self.next_at =  self.schedule.next_occurrence
    #self.remaining = self.schedule.remaining_occurrences
    self.save! 
  end
      
  def to_s
    self.name
  end
  
  def self.select_category
    ["One Time","Recurring","Required"]  
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

#create_table "action_tasks", :force => true do |t|
#  t.string   "name"
#  t.text     "description"
#  t.string   "url"
#  t.string   "state"
#  t.string   "type"
#  t.string   "category"
#  t.integer  "action_program_id"
#  t.datetime "created_at",                       :null => false
#  t.datetime "updated_at",                       :null => false
#  t.datetime "start_at"
#  t.datetime "next_at"
#  t.datetime "end_at"
#  t.string   "schedule"
#  t.string   "rules"
#  t.integer  "iterations",        :default => 0
#  t.integer  "remaining",         :default => 0
#end