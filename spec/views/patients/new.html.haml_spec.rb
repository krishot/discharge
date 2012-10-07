require 'spec_helper'

describe "patients/new" do
  before(:each) do
    assign(:patient, stub_model(Patient,
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :description => "MyText",
      :state => "MyString",
      :carepass_id => "MyString",
      :mhealth_id => "MyString",
      :physician => nil,
      :conditions => nil,
      :actions => nil,
      :alerts => nil
    ).as_new_record)
  end

  it "renders new patient form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => patients_path, :method => "post" do
      assert_select "input#patient_first_name", :name => "patient[first_name]"
      assert_select "input#patient_last_name", :name => "patient[last_name]"
      assert_select "input#patient_email", :name => "patient[email]"
      assert_select "input#patient_phone", :name => "patient[phone]"
      assert_select "textarea#patient_description", :name => "patient[description]"
      assert_select "input#patient_state", :name => "patient[state]"
      assert_select "input#patient_carepass_id", :name => "patient[carepass_id]"
      assert_select "input#patient_mhealth_id", :name => "patient[mhealth_id]"
      assert_select "input#patient_physician", :name => "patient[physician]"
      assert_select "input#patient_conditions", :name => "patient[conditions]"
      assert_select "input#patient_actions", :name => "patient[actions]"
      assert_select "input#patient_alerts", :name => "patient[alerts]"
    end
  end
end
