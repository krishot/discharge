require 'spec_helper'

describe "campaigns/edit" do
  before(:each) do
    @campaign = assign(:campaign, stub_model(Campaign,
      :name => "MyString",
      :budgeted_cost => "9.99",
      :actual_cost => "9.99",
      :expected_revenue => "9.99",
      :number_sent => "9.99",
      :expected_response => "9.99",
      :parent_id => "MyString",
      :campaign_type => "MyString",
      :status => "MyString",
      :state => "MyString",
      :type => "",
      :buying_stage => "MyString",
      :child_grouper => "MyString",
      :substantial_engagement => "MyString",
      :important_action => "MyString",
      :list_only => "MyString",
      :target_url => "MyString",
      :source_url => "MyString",
      :cookie_name => "MyString",
      :campaign_id => "MyString",
      :acts => nil
    ))
  end

  it "renders the edit campaign form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => campaigns_path(@campaign), :method => "post" do
      assert_select "input#campaign_name", :name => "campaign[name]"
      assert_select "input#campaign_budgeted_cost", :name => "campaign[budgeted_cost]"
      assert_select "input#campaign_actual_cost", :name => "campaign[actual_cost]"
      assert_select "input#campaign_expected_revenue", :name => "campaign[expected_revenue]"
      assert_select "input#campaign_number_sent", :name => "campaign[number_sent]"
      assert_select "input#campaign_expected_response", :name => "campaign[expected_response]"
      assert_select "input#campaign_parent_id", :name => "campaign[parent_id]"
      assert_select "input#campaign_campaign_type", :name => "campaign[campaign_type]"
      assert_select "input#campaign_status", :name => "campaign[status]"
      assert_select "input#campaign_state", :name => "campaign[state]"
      assert_select "input#campaign_type", :name => "campaign[type]"
      assert_select "input#campaign_buying_stage", :name => "campaign[buying_stage]"
      assert_select "input#campaign_child_grouper", :name => "campaign[child_grouper]"
      assert_select "input#campaign_substantial_engagement", :name => "campaign[substantial_engagement]"
      assert_select "input#campaign_important_action", :name => "campaign[important_action]"
      assert_select "input#campaign_list_only", :name => "campaign[list_only]"
      assert_select "input#campaign_target_url", :name => "campaign[target_url]"
      assert_select "input#campaign_source_url", :name => "campaign[source_url]"
      assert_select "input#campaign_cookie_name", :name => "campaign[cookie_name]"
      assert_select "input#campaign_campaign_id", :name => "campaign[campaign_id]"
      assert_select "input#campaign_acts", :name => "campaign[acts]"
    end
  end
end
