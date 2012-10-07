require 'spec_helper'

describe "conditions/index" do
  before(:each) do
    assign(:conditions, [
      stub_model(Condition,
        :name => "Name",
        :description => "MyText",
        :url => "MyText",
        :state => "State",
        :type => "Type",
        :category => "Category",
        :icd9 => "Icd9",
        :action_program => nil,
        :offers => nil
      ),
      stub_model(Condition,
        :name => "Name",
        :description => "MyText",
        :url => "MyText",
        :state => "State",
        :type => "Type",
        :category => "Category",
        :icd9 => "Icd9",
        :action_program => nil,
        :offers => nil
      )
    ])
  end

  it "renders a list of conditions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "Icd9".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
