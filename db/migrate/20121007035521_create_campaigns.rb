class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :name
      t.decimal :budgeted_cost
      t.decimal :actual_cost
      t.decimal :expected_revenue
      t.decimal :number_sent
      t.decimal :expected_response
      t.string :parent_id
      t.string :campaign_type
      t.string :status
      t.string :state
      t.string :type
      t.string :buying_stage
      t.string :child_grouper
      t.string :substantial_engagement
      t.string :important_action
      t.string :list_only
      t.date :started_on
      t.date :ended_on
      t.string :target_url
      t.string :source_url
      t.string :cookie_name
      t.string :campaign_id
      t.references :acts

      t.timestamps
    end
    add_index :campaigns, :acts_id
  end
end
