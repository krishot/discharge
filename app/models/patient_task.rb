class PatientTask < ActiveRecord::Base
  belongs_to :action_task
  belongs_to :patient
  
  def to_s
    self.name
  end
  
end

#create_table "patient_tasks", :force => true do |t|
#  t.string   "name"
#  t.string   "state"
#  t.integer  "action_task_id"
#  t.integer  "patient_id"
#  t.datetime "created_at",     :null => false
#  t.datetime "updated_at",     :null => false
#end