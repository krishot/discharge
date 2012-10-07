require 'spec_helper'

describe "patient_tasks/show" do
  before(:each) do
    @patient_task = assign(:patient_task, stub_model(PatientTask,
      :name => "Name",
      :state => "State",
      :action_task => nil,
      :patient => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/State/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
