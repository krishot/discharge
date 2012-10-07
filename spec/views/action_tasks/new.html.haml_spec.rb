require 'spec_helper'

describe "action_tasks/new" do
  before(:each) do
    assign(:action_task, stub_model(ActionTask,
      :name => "MyString",
      :description => "MyText",
      :url => "MyString",
      :state => "MyString",
      :type => "",
      :category => "MyString",
      :action_program => nil
    ).as_new_record)
  end

  it "renders new action_task form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => action_tasks_path, :method => "post" do
      assert_select "input#action_task_name", :name => "action_task[name]"
      assert_select "textarea#action_task_description", :name => "action_task[description]"
      assert_select "input#action_task_url", :name => "action_task[url]"
      assert_select "input#action_task_state", :name => "action_task[state]"
      assert_select "input#action_task_type", :name => "action_task[type]"
      assert_select "input#action_task_category", :name => "action_task[category]"
      assert_select "input#action_task_action_program", :name => "action_task[action_program]"
    end
  end
end
