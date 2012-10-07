class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.text :description
      t.string :state
      t.datetime :engaged_at
      t.datetime :last_contact
      t.string :carepass_id
      t.string :mhealth_id
      t.references :physician
      t.references :conditions
      t.references :actions
      t.references :alerts

      t.timestamps
    end
    add_index :patients, :physician_id
    add_index :patients, :conditions_id
    add_index :patients, :actions_id
    add_index :patients, :alerts_id
  end
end
