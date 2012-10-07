require 'spec_helper'

describe "campaigns/show" do
  before(:each) do
    @campaign = assign(:campaign, stub_model(Campaign,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/Parent/)
    rendered.should match(/Campaign Type/)
    rendered.should match(/Status/)
    rendered.should match(/State/)
    rendered.should match(/Type/)
    rendered.should match(/Buying Stage/)
    rendered.should match(/Child Grouper/)
    rendered.should match(/Substantial Engagement/)
    rendered.should match(/Important Action/)
    rendered.should match(/List Only/)
    rendered.should match(/Target Url/)
    rendered.should match(/Source Url/)
    rendered.should match(/Cookie Name/)
    rendered.should match(/Campaign/)
    rendered.should match(//)
  end
end
