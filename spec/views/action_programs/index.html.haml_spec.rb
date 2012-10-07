require 'spec_helper'

describe "action_programs/index" do
  before(:each) do
    assign(:action_programs, [
      stub_model(ActionProgram,
        :name => "Name",
        :category => "Category",
        :description => "MyText",
        :state => "State",
        :type => "Type",
        :therapy_id => "Therapy",
        :condition => nil
      ),
      stub_model(ActionProgram,
        :name => "Name",
        :category => "Category",
        :description => "MyText",
        :state => "State",
        :type => "Type",
        :therapy_id => "Therapy",
        :condition => nil
      )
    ])
  end

  it "renders a list of action_programs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Therapy".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
