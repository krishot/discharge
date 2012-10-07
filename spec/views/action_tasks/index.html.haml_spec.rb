require 'spec_helper'

describe "action_tasks/index" do
  before(:each) do
    assign(:action_tasks, [
      stub_model(ActionTask,
        :name => "Name",
        :description => "MyText",
        :url => "Url",
        :state => "State",
        :type => "Type",
        :category => "Category",
        :action_program => nil
      ),
      stub_model(ActionTask,
        :name => "Name",
        :description => "MyText",
        :url => "Url",
        :state => "State",
        :type => "Type",
        :category => "Category",
        :action_program => nil
      )
    ])
  end

  it "renders a list of action_tasks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
