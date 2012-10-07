class CreatePhysicians < ActiveRecord::Migration
  def change
    create_table :physicians do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.text :specialty
      t.string :state

      t.timestamps
    end
  end
end
