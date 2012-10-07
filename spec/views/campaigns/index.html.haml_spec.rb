require 'spec_helper'

describe "campaigns/index" do
  before(:each) do
    assign(:campaigns, [
      stub_model(Campaign,
        :name => "Name",
        :budgeted_cost => "9.99",
        :actual_cost => "9.99",
        :expected_revenue => "9.99",
        :number_sent => "9.99",
        :expected_response => "9.99",
        :parent_id => "Parent",
        :campaign_type => "Campaign Type",
        :status => "Status",
        :state => "State",
        :type => "Type",
        :buying_stage => "Buying Stage",
        :child_grouper => "Child Grouper",
        :substantial_engagement => "Substantial Engagement",
        :important_action => "Important Action",
        :list_only => "List Only",
        :target_url => "Target Url",
        :source_url => "Source Url",
        :cookie_name => "Cookie Name",
        :campaign_id => "Campaign",
        :acts => nil
      ),
      stub_model(Campaign,
        :name => "Name",
        :budgeted_cost => "9.99",
        :actual_cost => "9.99",
        :expected_revenue => "9.99",
        :number_sent => "9.99",
        :expected_response => "9.99",
        :parent_id => "Parent",
        :campaign_type => "Campaign Type",
        :status => "Status",
        :state => "State",
        :type => "Type",
        :buying_stage => "Buying Stage",
        :child_grouper => "Child Grouper",
        :substantial_engagement => "Substantial Engagement",
        :important_action => "Important Action",
        :list_only => "List Only",
        :target_url => "Target Url",
        :source_url => "Source Url",
        :cookie_name => "Cookie Name",
        :campaign_id => "Campaign",
        :acts => nil
      )
    ])
  end

  it "renders a list of campaigns" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Parent".to_s, :count => 2
    assert_select "tr>td", :text => "Campaign Type".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Buying Stage".to_s, :count => 2
    assert_select "tr>td", :text => "Child Grouper".to_s, :count => 2
    assert_select "tr>td", :text => "Substantial Engagement".to_s, :count => 2
    assert_select "tr>td", :text => "Important Action".to_s, :count => 2
    assert_select "tr>td", :text => "List Only".to_s, :count => 2
    assert_select "tr>td", :text => "Target Url".to_s, :count => 2
    assert_select "tr>td", :text => "Source Url".to_s, :count => 2
    assert_select "tr>td", :text => "Cookie Name".to_s, :count => 2
    assert_select "tr>td", :text => "Campaign".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
