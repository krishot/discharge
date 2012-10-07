class CreateActionTasks < ActiveRecord::Migration
  def change
    create_table :action_tasks do |t|
      t.string :name
      t.text :description
      t.string :url
      t.string :state
      t.string :type
      t.string :category
      t.references :action_program

      t.timestamps
    end
    add_index :action_tasks, :action_program_id
  end
end
