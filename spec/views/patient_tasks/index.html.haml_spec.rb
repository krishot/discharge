require 'spec_helper'

describe "patient_tasks/index" do
  before(:each) do
    assign(:patient_tasks, [
      stub_model(PatientTask,
        :name => "Name",
        :state => "State",
        :action_task => nil,
        :patient => nil
      ),
      stub_model(PatientTask,
        :name => "Name",
        :state => "State",
        :action_task => nil,
        :patient => nil
      )
    ])
  end

  it "renders a list of patient_tasks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
