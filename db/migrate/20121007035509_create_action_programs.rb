class CreateActionPrograms < ActiveRecord::Migration
  def change
    create_table :action_programs do |t|
      t.string :name
      t.string :category
      t.text :description
      t.string :state
      t.string :type
      t.references :condition

      t.timestamps
    end
    add_index :action_programs, :condition_id
  end
end
