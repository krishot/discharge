class CreatePatientTasks < ActiveRecord::Migration
  def change
    create_table :patient_tasks do |t|
      t.string :name
      t.string :state
      t.references :action_task
      t.references :patient

      t.timestamps
    end
    add_index :patient_tasks, :action_task_id
    add_index :patient_tasks, :patient_id
  end
end
