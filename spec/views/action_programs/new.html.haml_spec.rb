require 'spec_helper'

describe "action_programs/new" do
  before(:each) do
    assign(:action_program, stub_model(ActionProgram,
      :name => "MyString",
      :category => "MyString",
      :description => "MyText",
      :state => "MyString",
      :type => "",
      :therapy_id => "MyString",
      :condition => nil
    ).as_new_record)
  end

  it "renders new action_program form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => action_programs_path, :method => "post" do
      assert_select "input#action_program_name", :name => "action_program[name]"
      assert_select "input#action_program_category", :name => "action_program[category]"
      assert_select "textarea#action_program_description", :name => "action_program[description]"
      assert_select "input#action_program_state", :name => "action_program[state]"
      assert_select "input#action_program_type", :name => "action_program[type]"
      assert_select "input#action_program_therapy_id", :name => "action_program[therapy_id]"
      assert_select "input#action_program_condition", :name => "action_program[condition]"
    end
  end
end
