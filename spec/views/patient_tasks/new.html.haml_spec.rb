require 'spec_helper'

describe "patient_tasks/new" do
  before(:each) do
    assign(:patient_task, stub_model(PatientTask,
      :name => "MyString",
      :state => "MyString",
      :action_task => nil,
      :patient => nil
    ).as_new_record)
  end

  it "renders new patient_task form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => patient_tasks_path, :method => "post" do
      assert_select "input#patient_task_name", :name => "patient_task[name]"
      assert_select "input#patient_task_state", :name => "patient_task[state]"
      assert_select "input#patient_task_action_task", :name => "patient_task[action_task]"
      assert_select "input#patient_task_patient", :name => "patient_task[patient]"
    end
  end
end
