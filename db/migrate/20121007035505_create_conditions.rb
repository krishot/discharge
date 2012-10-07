class CreateConditions < ActiveRecord::Migration
  def change
    create_table :conditions do |t|
      t.string :name
      t.text :description
      t.string :url
      t.string :state
      t.string :type
      t.string :category
      t.string :icd9
      t.references :action_program
      t.references :offers

      t.timestamps
    end
    add_index :conditions, :action_program_id
    add_index :conditions, :offers_id
  end
end
