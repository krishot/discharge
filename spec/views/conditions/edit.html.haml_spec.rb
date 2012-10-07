require 'spec_helper'

describe "conditions/edit" do
  before(:each) do
    @condition = assign(:condition, stub_model(Condition,
      :name => "MyString",
      :description => "MyText",
      :url => "MyText",
      :state => "MyString",
      :type => "",
      :category => "MyString",
      :icd9 => "MyString",
      :action_program => nil,
      :offers => nil
    ))
  end

  it "renders the edit condition form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => conditions_path(@condition), :method => "post" do
      assert_select "input#condition_name", :name => "condition[name]"
      assert_select "textarea#condition_description", :name => "condition[description]"
      assert_select "textarea#condition_url", :name => "condition[url]"
      assert_select "input#condition_state", :name => "condition[state]"
      assert_select "input#condition_type", :name => "condition[type]"
      assert_select "input#condition_category", :name => "condition[category]"
      assert_select "input#condition_icd9", :name => "condition[icd9]"
      assert_select "input#condition_action_program", :name => "condition[action_program]"
      assert_select "input#condition_offers", :name => "condition[offers]"
    end
  end
end
