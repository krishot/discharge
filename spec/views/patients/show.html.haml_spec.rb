require 'spec_helper'

describe "patients/show" do
  before(:each) do
    @patient = assign(:patient, stub_model(Patient,
      :first_name => "First Name",
      :last_name => "Last Name",
      :email => "Email",
      :phone => "Phone",
      :description => "MyText",
      :state => "State",
      :carepass_id => "Carepass",
      :mhealth_id => "Mhealth",
      :physician => nil,
      :conditions => nil,
      :actions => nil,
      :alerts => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Email/)
    rendered.should match(/Phone/)
    rendered.should match(/MyText/)
    rendered.should match(/State/)
    rendered.should match(/Carepass/)
    rendered.should match(/Mhealth/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
  end
end
