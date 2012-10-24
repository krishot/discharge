class AddRecurringTasks < ActiveRecord::Migration
  def up 
    
    add_column :action_tasks, :start_at,      :datetime
    add_column :action_tasks, :next_at,       :datetime 
    add_column :action_tasks, :end_at,        :datetime     
    add_column :action_tasks, :schedule,      :string         
    add_column :action_tasks, :rules,         :string    
    add_column :action_tasks, :iterations,    :integer, :default=>0 
    add_column :action_tasks, :remaining,     :integer, :default=>0    
    
    
    
    add_column :patient_tasks, :start_at,      :datetime
    add_column :patient_tasks, :next_at,       :datetime      
    add_column :patient_tasks, :end_at,        :datetime      
    add_column :patient_tasks, :schedule,      :string    
    add_column :patient_tasks, :rules,         :string    
    add_column :patient_tasks, :iterations,    :integer, :default=>0    
    add_column :patient_tasks, :remaining,     :integer, :default=>0
    
    
  end

  def down  
    
    
    remove_column :action_tasks, :start_at  
    remove_column :action_tasks, :next_at   
    remove_column :action_tasks, :end_at    
    remove_column :action_tasks, :schedule
    remove_column :action_tasks, :rules
    remove_column :action_tasks, :iterations
    remove_column :action_tasks, :remaining
    
    
    
    remove_column :patient_tasks, :start_at
    remove_column :patient_tasks, :next_at    
    remove_column :patient_tasks, :end_at
    remove_column :patient_tasks, :schedule
    remove_column :patient_tasks, :rules
    remove_column :patient_tasks, :iterations
    remove_column :patient_tasks, :remaining

  end
end
