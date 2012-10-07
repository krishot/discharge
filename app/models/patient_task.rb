class PatientTask < ActiveRecord::Base
  belongs_to :action_task
  belongs_to :patient
end
