class PatientTask < ActiveRecord::Base
  
  belongs_to :action_task
  belongs_to :patient

  include IceCube
  serialize :schedule, Hash
  
  def schedule=(new_schedule)
    write_attribute(:schedule, new_schedule.to_hash)
  end

  def schedule
    Schedule.from_hash(read_attribute(:schedule))
  end
  
  def to_s
    self.name
  end
  
  def events
    
  end
  
end

#create_table "patient_tasks", :force => true do |t|
#  t.string   "name"
#  t.string   "state"
#  t.integer  "action_task_id"
#  t.integer  "patient_id"
#  t.datetime "created_at",                    :null => false
#  t.datetime "updated_at",                    :null => false
#  t.datetime "start_at"
#  t.datetime "next_at"
#  t.datetime "end_at"
#  t.string   "schedule"
#  t.string   "rules"
#  t.integer  "iterations",     :default => 0
#  t.integer  "remaining",      :default => 0
#end